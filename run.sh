#!/usr/bin/env sh

if [ ! -n "$UPSTREAM_HOST" ] ; then
    echo "Environment variable UPSTREAM_HOST is not set, exiting."
    exit 1
fi

if [ ! -n "$UPSTREAM_PORT" ] ; then
    echo "Environment variable UPSTREAM_PORT is not set, exiting."
    exit 1
fi

sed -i "s|\${UPSTREAM_HOST}|${UPSTREAM_HOST}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${UPSTREAM_PORT}|${UPSTREAM_PORT}|" /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
