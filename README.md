A simple NGINX proxy image, useful sometimes for debugging stuff and tunneling.

Some useful commands

* Tunnel an HTTPS site into HTTP
```bash
docker run --name forwarder-01 -dp 8061:80 -e FWD_SERVER=https://news.ycombinator.com ghcr.io/mahesh-hegde/nginx-forwarder
```

* Tunnel an HTTPS site into HTTP, which is already tunneled into localhost (needs network=host, often does not work anyway)
```bash
docker run --network=host --name forwarder-ssh -d \
-e FWD_PROXY_BUFFERING=off \
-e NGINX_PORT=8060 \
-e FWD_SERVER="https://localhost:9998" \
ghcr.io/mahesh-hegde/nginx-forwarder
```

Doesn't work sometimes when CDNs do funny stuff.

__Not to be used anywhere near production.__
