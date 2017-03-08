{% if grains['os_family'] == 'RedHat'%}
base.packages:
  pkg.installed:
    - pkgs:
      - vim-enhanced
      - at
      - bc
      - dstat
      - htop
      - iotop
      - ltrace
      - nmap
      - rsync
      - strace
      - sysstat
      - time
      - traceroute
      - unzip
      - wget
      - jq
      - bzip2
{% endif %}
