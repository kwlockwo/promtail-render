FROM grafana/promtail:main
COPY config.yaml /etc/promtail/config.yaml
CMD ["-config.file=/etc/promtail/config.yaml", "-config.expand-env=true", "-print-config-stderr" "-dry-run" "-inspect" "-client.url=http://127.0.0.1:3100/loki/api/v1/push"]
