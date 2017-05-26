FROM alpine:3.5

RUN apk add --no-cache bash python py-pip bind-tools openssh-client && \
    pip install --upgrade pip awscli && \
    apk --purge -v del py-pip

COPY tasks/ /etc/periodic/
RUN chmod -R +x /etc/periodic

CMD ["crond", "-f", "-d", "8"]
