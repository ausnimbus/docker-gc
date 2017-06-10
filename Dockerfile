FROM docker

COPY container-entrypoint /usr/bin/
COPY docker-gc /usr/bin/

VOLUME /var/lib/docker-gc

ENTRYPOINT ["container-entrypoint"]
