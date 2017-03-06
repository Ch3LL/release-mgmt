# Only configuring for Centos/Redhat at this time.


{% if grains['os_family'] == 'RedHat'%}
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
    - source: salt://nginx/templates/reverseproxy.conf
    - template: jinja
    - skip_verify: True
    - user: root
    - group: root
    - mode: 644


{% endif %}


