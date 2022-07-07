FROM datadog/agent:7.20.2

ENV NON_LOCAL_TRAFFIC=true

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_ENABLED=true

ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

ENV DB_DEV_PASSWORD="$DB_DEV_PASSWORD"
ENV DB_PROD_PASSWORD="$DB_PROD_PASSWORD"

COPY postgres.d/conf.yaml /etc/datadog-agent/conf.d/postgres.d/conf.yaml

RUN rm -rf postgres.d
