# Completely ignore non-RHEL based systems at the moment
# This will setup Jenkins via the YUM process described on their website.
#
validate_jenkins_repo_gone:
  file.absent:
    - name: /etc/yum.repos.d/jenkins_release.repo

jenkins_release:
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

jenkins:
  service.running:
    - enable: True 
