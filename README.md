# Tor/Haproxy a Docker Project #

The purpose of this project is to provide an image that you can you to have a pool of rotating ips through tor and haproxy.
This image will setup 40 tor and Haproxy to manage all that which expose port 9100.

## Building docker-tor

    git clone https://github.com/mfasanya/docker-tor-rotator.git docker-tor
    cd docker-tor
    docker build -t mfasanya/tor .

## Running docker-tor

Running the first time will set your port to a static port of your choice so
that you can easily map a proxy to. If this is the only thing running on your
system you can map the port to 9100 and no proxy is needed. i.e.
`-p=9100:9100`.

    sudo docker run -d=true -p=9100:9100 mfasanya/tor ./start.sh

### What now?

Now you have a rotating socks proxy on port 9100. You can test it with

```
$ curl --socks5 127.0.0.1:9100 wtfismyip.com/text
```

You can also use it to proxy terminal applications using proxychains.
