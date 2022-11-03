FROM alpine:3.16.2

LABEL tech.laforge.image.authors="Sébastien LAURENT"

RUN apk update
RUN apk add --no-cache openldap openldap-back-mdb openldap-clients openssl

COPY --chown=ldap:ldap slapd.conf /etc/openldap/slapd.conf
COPY --chown=ldap:ldap entries.ldif /etc/openldap/entries.ldif
COPY --chown=ldap:ldap ldap.conf /etc/openldap/ldap.conf

RUN install -m 750 -o ldap -g ldap -d /etc/openldap/slapd.d
RUN install -m 700 -o ldap -g ldap -d /var/lib/openldap/run
RUN install -m 700 -o ldap -g ldap -d /data
RUN install -m 700 -o ldap -g ldap -d /certs
RUN install -m 700 -o ldap -g ldap -d /app

WORKDIR /app
USER ldap 

COPY --chown=ldap:ldap run.sh ./

EXPOSE 3389
EXPOSE 6636

CMD [ "/app/run.sh" ]
