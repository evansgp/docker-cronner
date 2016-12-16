FROM ubuntu:latest
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apt-get update
RUN apt-get install cron

ADD crontab /etc/cron.d/hello-cron
RUN chmod 0644 /etc/cron.d/hello-cron

RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log
