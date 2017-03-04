base:
  '*':
    - epel
    - base
    - deps
    - jenkins

  'os:Centos':
    - match: grain
