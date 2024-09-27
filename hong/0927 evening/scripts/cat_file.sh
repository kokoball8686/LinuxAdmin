#!/bin/bash

FTPUSERS=/etc/vsftpd/ftpusers



for UNAME in $(cat $FTPUSERS | egrep -v '^#|^$')
do
    echo " [ok] : $UNAME"
done

