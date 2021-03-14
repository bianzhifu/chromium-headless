FROM alpine
RUN set -ex \
    \
    && apk add --no-cache chromium \
    \
    && mkdir /data \
    && chown nobody /data
USER nobody
WORKDIR /data
VOLUME /data
EXPOSE 9222
ENTRYPOINT ["chromium","--headless","--remote-debugging-address=0.0.0.0","--remote-debugging-port=9222","--user-data-dir=/data","--no-first-run","--disable-gpu","--disable-dev-shm-usage","--disable-software-rasterizer"]
