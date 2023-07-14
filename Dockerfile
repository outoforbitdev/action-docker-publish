FROM node:18-alpine

RUN apk update \
    && apk add docker

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
