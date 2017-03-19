FROM alpine:latest
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apk update && apk upgrade

COPY tasks/ /etc/periodic/
RUN chmod -R +x /etc/periodic

RUN apk add bash python bind-tools && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*

CMD ["crond", "-f", "-d", "8"]
