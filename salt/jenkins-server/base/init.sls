{% if grains['os_family'] == 'RedHat'%}
include:
  - base.cent
{% endif %}
{% if grains['os_family'] == 'Debian'%}
include:
  - base.debian
{% endif %}


