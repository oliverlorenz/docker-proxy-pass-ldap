# docker-proxy-pass

This is a fork of [oliverlorenz/proxy-pass](https://github.com/oliverlorenz/docker-proxy-pass) with aditional ldap support. It pass a request to a external service and checks ldap credentials. Works with [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/).

## Example

```
docker run \
   -it \
   -p 8080 \
   -e "UPSTREAM_HOST=example.com" \
   -e "UPSTREAM_PORT=80" \
   oliverlorenz/proxy-pass-ldap
```
