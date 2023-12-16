ARG BASE_IMAGE=nginx:alpine

FROM ${BASE_IMAGE}
ENV NGINX_PORT=80
ENV FWD_SERVER=https://github.com
ENV FWD_PROXY_BUFFERING=on
COPY ./default.conf.template /etc/nginx/templates/

EXPOSE ${NGINX_PORT}
