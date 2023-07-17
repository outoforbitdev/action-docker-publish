FROM outoforbitdev/node:1.0.2

RUN apt-get update \
    && apt-get install -y git docker

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
