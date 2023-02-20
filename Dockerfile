FROM datadog/agent:7.42.0

ENV NON_LOCAL_TRAFFIC=true

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true
ENV DD_LOGS_ENABLED=true
ENV DD_PROCESS_AGENT_ENABLED=true
ENV DD_DOGSTATSD_NON_LOCAL_TRAFFIC=true

COPY postgres.d/conf.yaml /etc/datadog-agent/conf.d/postgres.d/conf.yaml

RUN rm -rf postgres.d
