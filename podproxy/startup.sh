#!/bin/bash

mkdir .ssh
chmod 700 .ssh
cp config/authorized_keys .ssh
chmod 400 .ssh/authorized_keys

ssh-keygen -q -N "" -t dsa -f /app/keys/ssh_host_dsa_key
ssh-keygen -q -N "" -t rsa -b 4096 -f /app/keys/ssh_host_rsa_key
ssh-keygen -q -N "" -t ecdsa -f /app/keys/ssh_host_ecdsa_key
ssh-keygen -q -N "" -t ed25519 -f /app/keys/ssh_host_ed25519_key

/usr/sbin/sshd -f /app/sshd_config

while true; do
 sleep 365d
done 
