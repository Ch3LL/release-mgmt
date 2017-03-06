###
###   Setup a jenkins server with Nginx in front redirecting 8080 to the root host.
###
###
###   v 1.0 - Salt Stack
###   dubb-b 


# /TDOD setup nginx https:// and add the saltstack.net cert. 
# /TODO get this bootstrapped in C7 onto a perm host.
# /TODO make this service immutable and be able to be desatroyed and recreated on demand.
# /TODO make this work on more flavors of linux



base:
  '*':
    - epel
    - base
    - firewalld
    - deps
    - jenkins
    - nginx

  'os:Centos':
    - match: grain
