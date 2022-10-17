FROM laforgetech/sideshell:0.0.1

RUN mkdir config && chmod 700 config
RUN mkdir keys && chmod 700 keys

COPY --chown=tool startup.sh .
COPY --chown=tool config/test.pem.pub config/authorized_keys
COPY --chown=tool sshd_config sshd_config

RUN chmod 400 config/authorized_keys

EXPOSE 2022

CMD [ "/app/startup.sh" ]

