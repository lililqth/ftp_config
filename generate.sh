#!/bin/bash
rm -f vusers.txt
touch vusers.txt
for line in `cat paperid.txt`
do
  echo $line >> vusers.txt
  echo $RANDOM |md5sum |cut -c 1-8 >> vusers.txt
  mkdir -p /home/vftp/$line
done

echo 'admin' >> vusers.txt
echo 'rdma4PAXOS' >> vusers.txt
mkdir -p /home/vftp/admin

# https://help.ubuntu.com/community/vsftpd
db_load -T -t hash -f vusers.txt vsftpd-virtual-user.db
service vsftpd restart
