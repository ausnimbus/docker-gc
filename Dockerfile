FROM docker

RUN apk add --no-cache bash && \
    rm -rf /var/cache/apk/*

COPY container-entrypoint /usr/bin/
COPY docker-gc /usr/bin/

VOLUME /var/lib/docker-gc

ENTRYPOINT ["container-entrypoint"]
