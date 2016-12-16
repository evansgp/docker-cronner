FROM ubuntu:latest
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apt-get update && apt-get -y install python-pip && pip install --upgrade pip

RUN pip install awscli

RUN apt-get -y install cron dnsutils 

ADD crontab /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

ADD ddns-route53.sh /app/ddns-route53.sh
RUN chmod +x /app/ddns-route53.sh

RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log