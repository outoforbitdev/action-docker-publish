FROM outoforbitdev/node:1.0.1

RUN apk update \
    && apk add git docker

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
