# Production Deployment (Docker + Nginx)

This project currently has a local development compose file in [docker-compose.yml](docker-compose.yml).
For production, use the standalone file [docker-compose.prod.yml](docker-compose.prod.yml).

This production setup assumes a host-level (edge) Nginx handles public ports `80/443`
and proxies this project's Docker Nginx on loopback port `8082` by default.

## 1) Prepare environment variables

1. Run the initializer script:

```bash
./scripts/init-prod-env.sh
```

1. Replace all placeholder values in `.env.production`.
1. Set `WP_HOME` and `WP_SITEURL` to your live HTTPS domain.
1. Confirm no placeholders remain:

```bash
rg "change_me_" .env.production
```

The command should return no matches.

## 2) Start production stack

```bash
docker compose --env-file .env.production -f docker-compose.prod.yml up -d
```

This starts:

- `db` (MySQL)
- `wordpress` (internal only)
- `nginx` (project Nginx on `127.0.0.1:8082` by default)

And keeps `phpmyadmin` disabled by default in production.

## 3) Optional: start phpMyAdmin temporarily

```bash
docker compose --env-file .env.production -f docker-compose.prod.yml --profile tools up -d phpmyadmin
```

## 4) SSL/TLS (host edge Nginx)

Terminate TLS on your host-level Nginx and proxy to project Nginx.

1. Copy `docker/nginx/hfhcd.org.edge.conf.example` to your host Nginx vhost path.
1. Install certificates (for example with Certbot).
1. Update certificate paths and enable the site.
1. Reload host Nginx.

Keep `WP_HOME` and `WP_SITEURL` on `https://...` for canonical URLs and secure cookie behavior.

## 5) Admin URL

Production Nginx includes a friendly admin alias:

- `https://hfhcd.org/admin` -> redirects to `https://hfhcd.org/wp-admin/`

This does not remove the native WordPress admin path; it only adds a cleaner entry URL.

## 6) Upgrade and restart

```bash
docker compose --env-file .env.production -f docker-compose.prod.yml pull
docker compose --env-file .env.production -f docker-compose.prod.yml up -d
```

## 7) Rollback shortcut

If you need your previous local stack behavior:

```bash
docker compose -f docker-compose.yml up -d
```

## 8) Always-Remember Production Checklist

Use this exact order during incidents to avoid breaking both domains.

1. Confirm all critical containers are running:

```bash
docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'
```

1. Validate the production app endpoint before changing edge config:

```bash
curl -sSI http://127.0.0.1:8082/ | sed -n '1,12p'
```

1. Back up the active edge Nginx config before any edit:

```bash
sudo cp /home/elicom/sms/nginx/default.conf /home/elicom/sms/nginx/default.conf.bak.$(date +%F-%H%M%S)
```

1. Test Nginx config before reload/restart:

```bash
sudo docker exec sms_nginx nginx -t
```

1. If config is valid, reload/restart edge Nginx:

```bash
sudo docker restart sms_nginx
```

1. Verify both domains immediately after changes:

```bash
curl -sSI https://hfhcd.org/ | sed -n '1,12p'
curl -sSI https://klassapp.xyz/ | sed -n '1,12p'
```

## 9) Content Recovery (If Site Shows Default WordPress)

If production shows "Hello world" and "Sample Page", restore the backup SQL.

1. Create a safety dump first:

```bash
set -a; source .env.production; set +a
docker exec hope_db sh -lc 'mysqldump --no-tablespaces -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' > pre_restore_$(date +%F-%H%M%S).sql
```

1. Import backup while filtering privileged statements:

```bash
set -a; source .env.production; set +a
grep -Ev 'GTID_PURGED|SQL_LOG_BIN' hope_for_humanity_backup.sql | docker exec -i hope_db mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"
```

1. Verify content was restored:

```bash
set -a; source .env.production; set +a
docker exec -i hope_db mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" -D "$MYSQL_DATABASE" -e "SELECT COUNT(*) AS posts FROM ${WORDPRESS_TABLE_PREFIX}posts;"
```

## 10) Golden Rules

- Never edit shared edge Nginx config without a timestamped backup.
- Never reload Nginx without a successful `nginx -t` first.
- Never run multi-command fixes from chat blindly; run one command at a time during outages.
- Keep `docker/nginx/default.conf` as a file (not a directory) so bind mounts succeed.
