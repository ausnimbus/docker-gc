FROM docker

RUN apk add --no-cache bash && \
    rm -rf /var/cache/apk/*

COPY container-entrypoint /usr/bin/
COPY docker-gc /usr/bin/
COPY docker-gc-exclude /etc/

ENTRYPOINT ["container-entrypoint"]
