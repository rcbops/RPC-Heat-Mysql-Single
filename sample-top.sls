base:
  'roles:mysql_single':
    - match: grain
    - mysql_single.mysql
    - mysql_single.mysql.bootstrap
