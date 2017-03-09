# Completely ignore non-RHEL based systems at the moment
# This will setup Jenkins via the YUM process described on their website.
#
{% if pillar['server_tier'] == 'dev'%}
{% if grains['os_family'] == 'RedHat' %}

validate_jenkins_repo_gone:
  file.absent:
    - name: /etc/yum.repos.d/jenkins.repo

jenkins_repo:
  pkgrepo.managed:
    - humanname: jenkins
    - baseurl: http://pkg.jenkins.io/redhat
    - gpgcheck: 1
    - key_url: https://jenkins-ci.org/redhat/jenkins-ci.org.key
    - refresh_db: True
    - enabled: True

install_jenkins:
  pkg.installed:
    - pkgs:
      - jenkins
    -require:
      - file jenkins_repo

jenkins:
  service.running:
    - enable: True 

{% endif %}
{% endif %}
