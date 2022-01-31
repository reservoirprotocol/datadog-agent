FROM datadog/agent:7

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true

COPY postgres.d/conf.yaml /etc/datadog-agent/postgres.d/conf.yaml

RUN rm -rf postgres.d