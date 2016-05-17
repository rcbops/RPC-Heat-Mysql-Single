mysql_single:
  db:
    name: 'thedb'
  user:
    username: username
    password: changeme
    host: "'%'"

interfaces:
  public: eth0
  private: eth2

user-ports:
  ssh:
    chain: INPUT
    proto: tcp
    dport: 22
  salt-master:
    chain: INPUT
    proto: tcp
    dport: 4505
  salt-minion:
    chain: INPUT
    proto: tcp
    dport: 4506
  mysql:
    chain: INPUT
    proto: tcp
    dport: 3306
