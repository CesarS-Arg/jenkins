#!/bin/bash
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 394363795880.dkr.ecr.us-west-2.amazonaws.com
docker build -t jenkins/jenkins-ci .
docker tag jenkins/jenkins-ci:latest 394363795880.dkr.ecr.us-west-2.amazonaws.com/jenkins/jenkins-ci:latest
docker push 394363795880.dkr.ecr.us-west-2.amazonaws.com/jenkins/jenkins-ci:latest