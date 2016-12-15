FROM cgswong/aws:aws
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

COPY ddns-route53.sh /
ENTRYPOINT ["/ddns-route53.sh"]
