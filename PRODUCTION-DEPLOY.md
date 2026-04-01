# Production Deployment (Docker + Nginx)

This project currently has a local development compose file in [docker-compose.yml](docker-compose.yml).
For production, use the standalone file [docker-compose.prod.yml](docker-compose.prod.yml).

## 1) Prepare environment variables

1. Copy [.env.production.example](.env.production.example) to `.env.production`.
2. Replace all placeholder values.
3. Set `WP_HOME` and `WP_SITEURL` to your live HTTPS domain.

## 2) Start production stack

```bash
docker compose --env-file .env.production -f docker-compose.prod.yml up -d
```

This starts:

- `db` (MySQL)
- `wordpress` (internal only)
- `nginx` (public on port 80)

And keeps `phpmyadmin` disabled by default in production.

## 3) Optional: start phpMyAdmin temporarily

```bash
docker compose --env-file .env.production -f docker-compose.prod.yml --profile tools up -d phpmyadmin
```

## 4) SSL/TLS

This setup exposes port 80 only. In production, terminate TLS using:

- Cloudflare/Load Balancer in front of this host, or
- a TLS-enabled reverse proxy config (Nginx with certs, Traefik, Caddy, etc.).

Keep `WP_HOME` and `WP_SITEURL` on `https://...` for canonical URLs.

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
