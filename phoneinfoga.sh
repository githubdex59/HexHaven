#!/bin/bash

# runs phoneinfoga

read y/n -m "are you sure you want to do this sir? y/n"

sleep 1

if y/n == y
then
docker pull sundowndev/phoneinfoga:latest
else
echo "canceled"
fi

sleep 0.1

docker run -it -p 8080:8080 sundowndev/phoneinfoga serve -p 8080

sleep 1

echo "started phoneinfoga on port 8080 sir"
