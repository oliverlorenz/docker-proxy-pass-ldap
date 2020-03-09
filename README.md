# docker-proxy-pass

A very simple container to proxy_pass. Useful to use a external service with [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/).

## Example

```
docker run \
   -it \
   -p 8080 \
   -e "UPSTREAM_HOST=example.com" \
   -e "UPSTREAM_PORT=80" \
   oliverlorenz/proxy-pass
```
