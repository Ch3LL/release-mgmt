{% if grains['os_family'] == 'RedHat'%}
{% if pillar['server_tier'] == 'dev'%}
docker.package:
  pkg.installed:
    - pkgs:
      - docker
      - docker-devel

docker:
  user.present:
    - groups:
      - docker

  group.present:
    - system: True
    - members:
      - jenkins
      - root

  service.running:
    - enable: True
    - reload: True


{% endif %}
{% endif %}


