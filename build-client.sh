#!/bin/bash


BEEGFS_VERSION=7.3.0

apt install wget net-tools telnet -y
wget -q -O - https://www.beegfs.io/release/beegfs_$BEEGFS_VERSION/gpg/GPG-KEY-beegfs \
| apt-key add -
wget https://www.beegfs.io/release/beegfs_$BEEGFS_VERSION/dists/beegfs-focal.list \
-O /etc/apt/sources.list.d/beegfs.list
apt install apt-transport-https -y
apt update -y

apt install beegfs-client beegfs-utils beegfs-helperd -y

/opt/beegfs/sbin/beegfs-setup-client -m 127.0.0.1
systemctl start beegfs-helperd
systemctl start beegfs-client
echo "Check connectivity: beegfs-check-servers"
