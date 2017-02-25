FROM ubuntu:latest
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apt -y update && apt -y upgrade
RUN apt -y install cron dnsutils python-pip
RUN pip install --upgrade pip
RUN pip install awscli

ADD crontab /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab

ADD ddns-route53.sh /app/ddns-route53.sh
RUN chmod +x /app/ddns-route53.sh

RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log
