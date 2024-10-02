#!/bin/bash

IP=172.16.6.250

#압축
Cmd() {
    sleep 2; echo 'root'
    sleep 0.5; echo 'centos'
    sleep 0.5; echo 'hostname'
    sleep 0.5; echo 'tar cvzf /tmp/linux206.tar.gz /home'
    sleep 0.5; echo 'exit'
}
Cmd | telnet $IP


#다운
ftp -n $IP << EOF
user root centos
cd /tmp
lcd /root
bin
hash
prompt
mget linux206.tar.gz
quit
EOF


echo
echo "---result----"
ls -l /root/linux*.tar.gz
