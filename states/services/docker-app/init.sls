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
