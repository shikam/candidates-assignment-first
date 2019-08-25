#!/bin/bash
#add fix to exercise4-server1 here

sudo chown vagrant /etc/hosts
echo "192.168.100.11 server2" >> /etc/hosts
sudo chown root /etc/hosts


