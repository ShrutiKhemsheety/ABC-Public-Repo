#!/bin/bash
cd /home/ec2-user/staticwebsite

docker stop staticweb || true
docker rm staticweb || true

docker build -t staticweb .
docker run -d --name staticweb -p 80:80 staticweb
