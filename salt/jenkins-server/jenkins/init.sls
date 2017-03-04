# Completely ignore non-RHEL based systems
{% if grains['os_family'] == 'RedHat' %}

validate_jenkins_repo_gone:
  file.absent:
    - name: /etc/yum.repos.d/jenkins.repo

validate_master_cache_gone:
  file.absent:
    - name: /var/cache/salt/minion/extrn_files/base/pkg.jenkins.io/redhat-stable/jenkins.repo


install_jenkins_repo:
  file.managed:
    - name: /etc/yum.repos.d/jenkins.repo
    - source: https://pkg.jenkins.io/redhat-stable/jenkins.repo
    - skip_verify: True
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: validate_jenkins_repo_gone

install_jenkins_repo_key:
  cmd.run:
    - name: rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
    - require:
      - file: install_jenkins_repo

install_jenkins:
  pkg.installed:
    - pkgs:
      - jenkins
    - require:
      - file: install_jenkins_repo

{% endif %}
