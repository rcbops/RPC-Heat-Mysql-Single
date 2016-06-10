mysql:
  salt.state:
    - tgt: 'roles:mysql_single'
    - tgt_type: grain
    - highstate: True

hardening:
  salt.state:
    - tgt: 'roles:mysql_single'
    - tgt_type: grain
    - sls:
      - mysql_single.hardening
    - require:
      - salt: mysql
