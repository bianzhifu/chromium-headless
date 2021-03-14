FROM alpine:3.11
RUN set -ex \
    \
    && apk add --no-cache chromium
EXPOSE 9222
ENTRYPOINT ["chromium-browser","--headless","--remote-debugging-address=0.0.0.0","--remote-debugging-port=9222","--disable-gpu","--disable-dev-shm-usage","--disable-setuid-sandbox","--disable-software-rasterizer","--no-first-run","--no-sandbox","--no-zygote","--single-process"]
