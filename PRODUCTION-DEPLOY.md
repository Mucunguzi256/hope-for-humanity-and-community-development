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
