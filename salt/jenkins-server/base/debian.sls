{% if grains['os_family'] == 'Debian'%}
base.packages:
  pkg.installed:
    - pkgs:
      - vim
      - telnet
      - wget
      - curl
      - screen
      - chrony
      - manpages
      - dnsutils
      - ed
      - iputils-tracepath
      - mlocate
      - tcpdump
      - man-db
      - lshw
      - ltrace
      - lsof
      - at 
      - bc   
      - dstat 
      - gzip 
      - htop 
      - iotop 
      - ltrace 
      - nmap 
      - rsync 
      - strace 
      - sysstat 
      - traceroute 
      - unzip 
      - wget 
      - jq 
      - bzip2 
{% endif %}


