FROM gliderlabs/alpine:latest
MAINTAINER Boggart "github.com/Boggart"
RUN apk add --update haproxy && rm -rf /var/cache/apk/*
CMD ["haproxy", "-d", "-f", "/etc/haproxy/haproxy.cfg"]