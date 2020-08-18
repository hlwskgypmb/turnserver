# turnserver
turnserver服务

使用方法
* 1.安装docker <br>
* 2.拉取镜像 docker pull registry.cn-hongkong.aliyuncs.com/hl/turnserver <br>
* 3.运行 <br>

```
  docker run \
  -it \
  --name turn
  --net=host \
  --restart=always \
  -v /home:/turn \
  -d registry.cn-hongkong.aliyuncs.com/hl/turnserver 1.2.3.4:3478 /turn/turnserver.conf
```

https://docs.wildfirechat.cn/webrtc/turn_server.html <br>
turnserver -v -r ${公网IP}:3478 -a -o -c /usr/local/etc/turnserver.conf <br>
-v /home:/turn 挂载turnserver.conf配置目录
