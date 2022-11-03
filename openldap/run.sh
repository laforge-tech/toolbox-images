#!/bin/sh


if ! [ -f "/certs/tls.key" ]; then
  openssl req -x509 -newkey rsa:2048 -keyout /certs/tls.key -out /certs/tls.crt -sha256 -days 3650 -nodes -subj '/CN=localhost'
fi

if ! [ -f "/data/lock.mdb" ]; then
  /usr/sbin/slapadd -f /etc/openldap/slapd.conf -l /etc/openldap/entries.ldif -n 1
fi

/usr/sbin/slapd -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d -u ldap -g ldap -h "ldapi:/// ldap://:3389 ldaps://:6636" -d 0
