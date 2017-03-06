#Defining the OS's that we will run on.
#Currently all is being built with CentOS, will extend as needed.

{% if grains['os_family'] == 'RedHat'%}
include:
  - base.cent
{% endif %}
{% if grains['os_family'] == 'Debian'%}
include:
  - base.debian
{% endif %}


