FROM datadog/agent:7

ENV DD_AUTOCONFIG_FROM_ENVIRONMENT=false
ENV NON_LOCAL_TRAFFIC=true

ENV DD_APM_ENABLED=true
ENV DD_APM_NON_LOCAL_TRAFFIC=true

LABEL "com.datadoghq.ad.check_names"='["postgres"]'
LABEL "com.datadoghq.ad.init_configs"='[{}]'
LABEL "com.datadoghq.ad.instances"='[{"host":"containers-us-west-9.railway.app","port":7656,"username":"datadog","password":"password"}]'
LABEL "com.datadoghq.ad.logs"='[{"source":"postgresql","service":"postgresql"}]'