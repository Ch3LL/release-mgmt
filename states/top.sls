base:
  '*':
    - base

{% if pillar['server_tier'] == 'dev'%}

dev:
  '*dev*':
    - services.nginx-app
    - services.docker-app
    - services.jenkins-app

{% elif pillar['server_tier'] == 'test'%}

test:
  '*test*':
    - services.nginx-app
    - services.jenkins-app

{% elif pillar['server_tier'] == 'prod'%}

prod:
  '*prod*':
    - services.nginx-app
    - services.jenkins-app

{% endif %}
