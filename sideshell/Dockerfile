FROM alpine:3.16.2

LABEL tech.laforge.image.authors="Sébastien LAURENT"

RUN apk update
RUN apk add --no-cache bash bind-tools curl openssh openssl

RUN curl -LO https://dl.k8s.io/release/v1.25.2/bin/linux/amd64/kubectl && chmod a+x ./kubectl && mv ./kubectl /usr/local/bin
RUN adduser -u 1000 -h /app -D -s /bin/bash tool

WORKDIR /app
USER 1000

COPY bashrc .bashrc

CMD [ "/bin/bash", "-c", "while true; do sleep 365d ; done" ]
