#!/bin/bash
token="116883e27ee5eb27613f34199e15956b06" # <-- put API token here
crumb=$(curl -u "xqf052:$token" -s 'http://qifan.jenkins:8080/crumbIssuer/api/xml?xpath=con
cat(//crumbRequestField,":",//crumb)')
#curl -u "xqf052:$token" -H "$crumb" -X POST http://qifan.jenkins:8080/job/env-job/build?delay=0sec
curl -u "xqf052:$token" -H "$crumb" -X POST  http://qifan.jenkins:8080/job/backup-to-aws/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_BUCKET_NAME=qifan-jiangren202109