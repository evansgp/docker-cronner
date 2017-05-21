FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add bash python py-pip bind-tools openssh-client && \
    pip install --upgrade pip awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

COPY tasks/ /etc/periodic/
RUN chmod -R +x /etc/periodic

CMD ["crond", "-f", "-d", "8"]
