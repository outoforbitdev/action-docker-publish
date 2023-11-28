FROM outoforbitdev/node:2.0.1
    ARG EXAMPLE
    ARG OTHER_EXAMPLE
    COPY entrypoint.sh /entrypoint.sh
    RUN chmod 777 /entrypoint.sh
    RUN echo ${EXAMPLE} >> test.txt
    RUN echo ${OTHER_EXAMPLE} >> test.txt
    ENTRYPOINT [ "/entrypoint.sh" ]