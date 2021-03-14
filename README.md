# chromium-headless 
http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/aarch64/   
http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/x86_64/   
查找chromium版本号 

当前 稳定版本81.0.4044.113 by alpine:3.11

docker-compose
```version: "3"
services:
  chromium-headless:
    image: bianzhifu/chromium-headless
    container_name: chromium-headless
    hostname: chromium-headless
    restart: always
    network_mode: "bridge"
    ports:
      - "9222:9222"
```

docker run
```
docker run -dit --name chromium-headless --hostname chromium-headless  --restart=always \
	--net=bridge -p 9222:9222 \
	bianzhifu/chromium-headless
```
