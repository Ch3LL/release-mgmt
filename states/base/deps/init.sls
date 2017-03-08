# Any dependencies for Jenkins can go here
# currently Java 8 is the only one.

{% if grains['os_family'] == 'RedHat'%}
app.packages:
  pkg.installed:
    - pkgs:
      - java-1.8.0-openjdk
{% endif %}


