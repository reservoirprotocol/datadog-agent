FROM datadog/agent:7.37.1

ENV NON_LOCAL_TRAFFIC=true

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_ENABLED=true
ENV DD_PROFILING_ENABLED=true
ENV DD_LOG_LEVEL=debug

ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

COPY postgres.d/conf.yaml /etc/datadog-agent/conf.d/postgres.d/conf.yaml

RUN rm -rf postgres.d
