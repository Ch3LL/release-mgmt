# Setting firewalld public rules for Jenkins
# Included ssh, smtp, http, https, and salt master ports
# removed 8080 and letting Nginx handle the redirect

public:
  firewalld.present:
    - name: public
    - block_icmp:
      - echo-reply
      - echo-request
    - default: False
    - masquerade: True
    - ports:
      - 22/tcp
      - 25/tcp
      - 80/tcp
      - 443/tcp
      - 4505/tcp
      - 4506/tcp
