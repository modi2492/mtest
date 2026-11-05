FROM alpine:latest
RUN apk add --no-cache squid
RUN echo "http_access allow all" >> /etc/squid/squid.conf
EXPOSE 8080
CMD ["squid", "-N", "-d", "1"]
