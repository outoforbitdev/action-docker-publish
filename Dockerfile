FROM outoforbitdev/node:2.0.1

RUN apt-get update \
    && apt-get install -y git docker

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
