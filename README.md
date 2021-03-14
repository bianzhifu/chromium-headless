# chromium-headless 
http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/aarch64/   
http://dl-cdn.alpinelinux.org/alpine/latest-stable/community/x86_64/   
查找chromium版本号 例如86.0.4240.111 

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
