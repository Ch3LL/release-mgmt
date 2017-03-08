#Defining the OS's that we will run on.
#Currently all is being built with CentOS, will extend as needed.
{% if pillar['server_tier'] == 'dev' or  pillar['server_tier'] == 'test' or  pillar['server_tier'] == 'prod'%}

{% if grains['os_family'] == 'RedHat'%}
include:
  - base.cent
{% endif %}

{% if grains['os_family'] == 'Debian'%}
include:
  - base.debian
{% endif %}

{% endif %}

