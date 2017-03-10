{% if 'dev' in grains['id'] %}
dev:
  '*':
    - dev

{% elif 'test' in grains['id'] %}
test:
  '*':
    - test

{% elif 'prod' in grains['id'] %}
prod:
  '*':
    - prod
{% endif %}
