#!/usr/bin/env sh

if [ ! -n "$UPSTREAM_HOST" ] ; then
    echo "Environment variable UPSTREAM_HOST is not set, exiting."
    exit 1
fi

if [ ! -n "$UPSTREAM_PORT" ] ; then
    echo "Environment variable UPSTREAM_PORT is not set, exiting."
    exit 1
fi

if [ ! -n "$LDAP_URL" ] ; then
    echo "Environment variable LDAP_URL is not set, exiting."
    exit 1
fi

if [ ! -n "$LDAP_BIND_DN" ] ; then
    echo "Environment variable LDAP_BIND_DN is not set, exiting."
    exit 1
fi

if [ ! -n "$LDAP_BIND_PASSWD" ] ; then
    echo "Environment variable LDAP_BIND_PASSWD is not set, exiting."
    exit 1
fi

if [ ! -n "$LDAP_CHECKS" ] ; then
    echo "Environment variable LDAP_CHECKS is not set, exiting."
    exit 1
fi

sed -i "s|\${UPSTREAM_HOST}|${UPSTREAM_HOST}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${UPSTREAM_PORT}|${UPSTREAM_PORT}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${LDAP_URL}|${LDAP_URL}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${LDAP_BIND_DN}|${LDAP_BIND_DN}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${LDAP_BIND_PASSWD}|${LDAP_BIND_PASSWD}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${LDAP_CHECKS}|${LDAP_CHECKS}|" /etc/nginx/conf.d/default.conf

cat /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
