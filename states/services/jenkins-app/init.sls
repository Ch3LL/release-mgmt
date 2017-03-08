# Completely ignore non-RHEL based systems at the moment
# This will setup Jenkins via the YUM process described on their website.
#
{% if pillar['server_tier'] == 'dev'%}
{% if grains['os_family'] == 'RedHat' %}

validate_jenkins_repo_gone:
  file.absent:
    - name: /etc/yum.repos.d/jenkins_release.repo

jenkins_release:
  pkgrepo.managed:
    - humanname: Jenkins Release Repo
    - mirrorlist: https://pkg.jenkins.io/redhat-stable/jenkins.repo
    - key_url: https://pkg.jenkins.io/redhat/jenkins.io.key

install_jenkins:
  pkg.installed:
    - pkgs:
      - jenkins

jenkins:
  service.running:
    - enable: True 

{% endif %}
{% endif %}
