#!/bin/sh

# launch 20 tors
/usr/local/bin/tor --SocksPort 9051 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/1.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/1
/usr/local/bin/tor --SocksPort 9052 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/2.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/2
/usr/local/bin/tor --SocksPort 9053 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/3.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/3
/usr/local/bin/tor --SocksPort 9054 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/4.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/4
/usr/local/bin/tor --SocksPort 9055 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/5.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/5
/usr/local/bin/tor --SocksPort 9056 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/6.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/6
/usr/local/bin/tor --SocksPort 9057 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/7.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/7
/usr/local/bin/tor --SocksPort 9058 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/8.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/8
/usr/local/bin/tor --SocksPort 9059 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/9.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/9
/usr/local/bin/tor --SocksPort 9060 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/10.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/10
/usr/local/bin/tor --SocksPort 9061 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/11.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/11
/usr/local/bin/tor --SocksPort 9062 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/12.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/12
/usr/local/bin/tor --SocksPort 9063 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/13.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/13
/usr/local/bin/tor --SocksPort 9064 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/14.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/14
/usr/local/bin/tor --SocksPort 9065 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/15.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/15
/usr/local/bin/tor --SocksPort 9066 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/16.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/16
/usr/local/bin/tor --SocksPort 9067 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/17.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/17
/usr/local/bin/tor --SocksPort 9068 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/18.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/18
/usr/local/bin/tor --SocksPort 9069 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/19.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/19
/usr/local/bin/tor --SocksPort 9070 --MaxCircuitDirtiness 10 --PidFile /var/run/tor/20.pid --RunAsDaemon 1 --DataDirectory /var/db/tor/20

# launch haproxy
haproxy -f /etc/default/haproxy.conf -q -db
