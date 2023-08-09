FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install nginx -y

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx" ]

CMD [ "-g", "daemon off;" ]

WORKDIR /etc/nginx

VOLUME [ "/var/lib/nginx" ]

