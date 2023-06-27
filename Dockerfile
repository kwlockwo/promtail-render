FROM grafana/promtail:main
COPY config.yml /etc/promtail/config.yml
CMD ["-config.file=/etc/promtail/config.yaml", "-config.expand-env=true", "-print-config-stderr"]
