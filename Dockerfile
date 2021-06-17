FROM ubuntu:latest
RUN apt-get update && apt-get install git -y && apt install curl -y && apt-get install python3-pip -y && apt-get install nmap -y && pip3 install aiohttp
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y golang-go
RUN mkdir -p arsenal
WORKDIR /arsenal
ADD . /arsenal/
RUN pip3 install -r Jamf-Attack-Toolkit/requirements.txt && pip3 install -r cloud_enum/requirements.txt && pip3 install -r JenkinsHunter/requirements.txt
RUN go get github.com/zricethezav/gitleaks
RUN go get github.com/kgretzky/evilginx2
RUN go get github.com/grines/scour
RUN go get github.com/grines/hashiscan
RUN cd pacu && pip3 install -U pip && pip3 install boto3
