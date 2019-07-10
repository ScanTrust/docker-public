FROM influxdb:alpine

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

WORKDIR /app
COPY influxdb/influxdb_entrypoint.sh ./
RUN chmod u+x influxdb_entrypoint.sh

ENTRYPOINT ["/app/influxdb_entrypoint.sh"]
