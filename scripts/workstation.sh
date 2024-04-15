#!/bin/sh

apt-get update
apt-get upgrade -y
apt-get install -y vim curl wget git net-tools ca-certificates gnupg

echo "SERVER_IP:   <$SERVER_IP>"
echo "SERVER_NAME: <$SERVER_NAME>"
echo "WORKSTATION_IP:    <$WORKSTATION_IP>"
echo "WORKSTATION_NAME:  <$WORKSTATION_NAME>"

echo "$SERVER_IP $SERVER_NAME" >> /etc/hosts
echo "$SERVER_IP mlabouri.42.fr" >> /etc/hosts
echo "$WORKSTATION_IP $WORKSTATION_NAME" >> /etc/hosts

UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/ansible.list
apt-get update
apt-get install -y ansible
