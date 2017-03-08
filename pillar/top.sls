{% if 'dev' in grains['host'] %}
dev:
  '*':
    - dev
{% endif %}

{% if 'test' in grains['host'] %}
test:
  '*':
    - test
{% endif %}

{% if 'prod' in grains['host'] %}
prod:
  '*':
    - prod
{% endif %}
