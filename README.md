# shadowsocks-privoxy

    shadowsocks client for socks5 proxy
    privoxy for http proxy

## 镜像提交:

~~~
docker push bluebu/shadowsocks-privoxy
~~~


## 执行示例:

~~~
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 -k $PASSWORD bluebu/shadowsocks-privoxy
~~~