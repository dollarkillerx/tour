#!/bin/bash

image_name=tour

#CGO_ENABLED=0 GOOS="linux" GOARCH="amd64" go build -o tour .

docker rmi -f $image_name
docker build -f Dockerfile -t $image_name  .
#rm tour
docker save -o $image_name.tar $image_name:latest
echo $image_name:latest