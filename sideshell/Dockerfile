FROM alpine:3.17.2

LABEL tech.laforge.image.authors="Sébastien LAURENT"

ARG TARGETARCH

RUN apk update
RUN apk add --no-cache bash bind-tools curl openssh openssl tar yq jq

RUN curl -LO https://dl.k8s.io/release/v1.25.2/bin/linux/${TARGETARCH}/kubectl && chmod a+x ./kubectl && mv ./kubectl /usr/local/bin
RUN curl -LO https://releases.hashicorp.com/vault/1.13.0/vault_1.13.0_linux_${TARGETARCH}.zip && unzip vault_1.13.0_linux_${TARGETARCH}.zip -d /usr/bin && rm /vault_1.13.0_linux_${TARGETARCH}.zip
RUN curl -L https://github.com/derailed/k9s/releases/download/v0.27.3/k9s_Linux_${TARGETARCH}.tar.gz | tar zx -C /usr/bin k9s

RUN adduser -u 1000 -h /app -D -s /bin/bash tool

WORKDIR /app
USER 1000

COPY bashrc .bashrc

CMD [ "/bin/bash", "-c", "while true; do sleep 365d ; done" ]
