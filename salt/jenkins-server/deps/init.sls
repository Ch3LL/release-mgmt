{% if grains['os_family'] == 'RedHat'%}
app.packages:
  pkg.installed:
    - pkgs:
      - java-1.8.0-openjdk
{% endif %}


