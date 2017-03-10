{% if 'dev' in grains['id'] %}
dev:
  '*':
    - dev
{% endif %}

{% if 'test' in grains['id'] %}
test:
  '*':
    - test
{% endif %}

{% if 'prod' in grains['id'] %}
prod:
  '*':
    - prod
{% endif %}
