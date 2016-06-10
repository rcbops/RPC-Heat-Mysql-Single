{% from "mysql_single/mysql/mysql.jinja" import mysql with context %}

mysql_db_and_user:
  mysql_database.present:
    - name: {{ mysql.db.name }}
    - connection_default_file: /root/.my.cnf

  mysql_user.present:
    - name: {{ mysql.user.username }}
    - password: {{ mysql.user.password }}
    - host: {{ mysql.user.host }}
    - connection_default_file: /root/.my.cnf

  mysql_grants.present:
   - user: {{ mysql.user.username }}
   - host: {{ mysql.user.host }}
   - database: '{{ mysql.db.name}}.*'
   - grant: select, insert, update, delete, create, drop, index, alter, lock tables, create temporary tables
   - connection_default_file: /root/.my.cnf
