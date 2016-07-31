# shadowsocks-privoxy

    shadowsocks client for socks5 proxy
    privoxy for http proxy

## Image:

~~~
docker pull bluebu/shadowsocks-privoxy
~~~


## Run:

~~~
docker run -i -t -e SERVER_ADDR=ss.server.ip -e SERVER_PORT=port -e PASSWORD=123456 bluebu/shadowsocks-privoxy
~~~
