# docker-cronner

Uses a [bash script](https://github.com/mthssdrbrg/ddns-route53/blob/master/ddns-route53) to run the AWS CLI to update route53 from opendns.com.

```bash
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...

docker-compose up --build -d
```
