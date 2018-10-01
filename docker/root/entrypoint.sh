#!/usr/bin/bash

DOMAIN="$1"

certbot certonly \
  -d "$DOMAIN" \
  -d "*.$DOMAIN" \
  --dns-route53 \
  --logs-dir /letsencrypt/ \
  --config-dir /letsencrypt/ \
  --work-dir /letsencrypt/ \
  -m ${EMAIL:?required} \
  --agree-tos \
  --non-interactive
