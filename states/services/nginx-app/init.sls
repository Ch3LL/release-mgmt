{% if grains['os_family'] == 'RedHat'%}
{% if pillar['server_tier'] == 'dev'%}
nginx.package:
  pkg.installed:
    - pkgs:
      - nginx

nginx:
  service.running:
    - enable: True

configure_nginx_jenkins:
  file.managed:
    - name: /etc/nginx/conf.d/reverseproxy.conf
    - source: salt://services/nginx-app/templates/reverseproxy.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - group: root
    - mode: 644


{% endif %}
{% endif %}


