FROM alpine:latest
COPY ./script.sh /var/script.sh
ENTRYPOINT ["/bin/sh", "/var/script.sh", "sleep", "60"]