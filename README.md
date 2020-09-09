# turnserver
turnserver服务

使用方法
* 1.安装docker <br>
* 2.拉取镜像 docker pull registry.cn-hongkong.aliyuncs.com/hl/turnserver <br>
* 3.运行 <br>

```
  docker run \
  -it \
  --name turn \
  --net=host \
  --restart=always \
  -v /home:/turn \
  -d registry.cn-hongkong.aliyuncs.com/hl/turnserver 1.2.3.4:3478 /turn/turnserver.conf
```

-v /home:/turn 挂载home目录,配置文件地址为/home/turnserver.conf。可更改其它目录-> -v /xxx/xxx:/turn   /xxx/xxx/turnserver.conf

turnserver.conf配置
```
listening-ip=${内网IP}
relay-ip=${内网IP}
external-ip=${外网IP}

user=username:password

min-port=49152
max-port=65535
```

相关资料
https://docs.wildfirechat.cn/webrtc/turn_server.html <br>
