{% if pillar['server_tier'] == 'dev' or  pillar['server_tier'] == 'test' or  pillar['server_tier'] == 'prod'%}

base:
  '*':
    - base

{% endif %}

{% if pillar['server_tier'] == 'dev'%}

dev:
  '*':
    - services.nginx-app
    - services.docker-app
    - services.jenkins-app

{% endif %}

{% if pillar['server_tier'] == 'test'%}

test:
  '*':
    - services.nginx-app
    - services.jenkins-app

{% endif %}

{% if pillar['server_tier'] == 'prod'%}

prod:
  '*':
    - services.nginx-app
    - services.jenkins-app

{% endif %}
