FROM grafana/grafana:6.0.0

COPY grafana/dashboards /etc/grafana/dashboards
COPY grafana/datasources /etc/grafana/datasources
COPY grafana/grafana.ini /etc/grafana

WORKDIR /app
COPY grafana/grafana_entrypoint.sh ./

ENTRYPOINT ["/app/grafana_entrypoint.sh"]
