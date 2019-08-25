#!/bin/bash
#add fix to exercise4-server2 here

sudo chown vagrant /etc/hosts
echo "192.168.100.10 server1" >> /etc/hosts
sudo chown root /etc/hosts
