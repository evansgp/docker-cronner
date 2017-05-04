# docker-ddns

Uses a [bash script](https://github.com/mthssdrbrg/ddns-route53/blob/master/ddns-route53) to run the AWS CLI to update route53 from opendns.com.

```bash
docker build -t evansgp/docker-ddns git@github.com:evansgp/docker-ddns.git

docker run -e "AWS_ACCESS_KEY_ID=..." -e "AWS_SECRET_ACCESS_KEY=..." -d evansgp/docker-ddns
```
