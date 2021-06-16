FROM ubuntu:latest
RUN apt-get update && apt-get install git -y && apt install curl -y && apt-get install python3-pip -y && apt-get install nmap -y && pip3 install aiohttp
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y golang-go
RUN mkdir -p arsenal
WORKDIR /arsenal
ADD . /arsenal/
RUN pip3 install -r Jamf-Attack-Toolkit/requirements.txt && pip3 install -r cloud_enum/requirements.txt 
RUN go get github.com/0xsha/CloudBrute && cd CloudBrute && go build && cd .. 
RUN go get github.com/zricethezav/gitleaks && cd gitleaks && go build && cd ..
RUN go get github.com/kgretzky/evilginx2 && cd evilginx2 && go build && cd ..
RUN go get github.com/grines/scour && cd scour && go build && cd ..
RUN go get github.com/grines/hashiscan && cd hashiscan && go build && cd ..
RUN cd JenkinsHunter && pipe3 install -r requirements.txt
RUN cd pacu && pip3 install -U pip && pip3 install boto3

