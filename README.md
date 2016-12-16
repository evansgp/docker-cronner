# docker-ddns

Uses a [bash script](https://github.com/mthssdrbrg/ddns-route53/blob/master/ddns-route53) to run the AWS CLI to update route53 from opendns.com.

Based on ubuntu:latest.

It is very large and bloated and not at all re-usable.

TODO:
  - base off alpine?
  - put everything in envs