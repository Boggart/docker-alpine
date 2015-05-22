FROM gliderlabs/alpine:edge
MAINTAINER Boggart "github.com/Boggart"
RUN apk add --update haproxy && rm -rf /var/cache/apk/* && mkdir /var/empty && rm /sbin/apk
CMD ["haproxy", "-d", "-f", "/etc/haproxy/haproxy.cfg"]