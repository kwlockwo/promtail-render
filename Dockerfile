FROM grafana/promtail:main
COPY config.yaml /etc/promtail/config.yaml
CMD ["-config.file=/etc/promtail/config.yaml", "-config.expand-env=true", "-print-config-stderr", "-log.level=debug"]