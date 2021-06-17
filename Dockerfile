FROM ubuntu:latest
RUN apt-get update && apt-get install git -y && apt install curl -y && apt-get install python3-pip -y && apt-get install nmap -y && pip3 install aiohttp && pip3 install atlassian-python-api && pip3 install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib
RUN export DEBIAN_FRONTEND=noninteractive && apt install -y golang-go
RUN mkdir -p arsenal
WORKDIR /arsenal
ADD . /arsenal/
RUN pip3 install -r Jamf-Attack-Toolkit/requirements.txt && pip3 install -r cloud_enum/requirements.txt && pip3 install -r JenkinsHunter/requirements.txt
RUN git clone https://github.com/zricethezav/gitleaks && cd gitleaks && go build
RUN go get github.com/kgretzky/evilginx2
RUN go get github.com/grines/scour
RUN go get github.com/grines/hashiscan
RUN cd pacu && pip3 install -U pip && pip3 install boto3 && pip3 install -r requirements.txt
WORKDIR /arsenal
RUN cd Slackhound && pip3 install -r requirements.txt
WORKDIR /arsenal
RUN cd SlackPirate && pip3 install -r requirements.txt
RUN apt install dirb
WORKDIR /arsenal
RUN cd jenkins-attack-framework && pip3 install -r requirements.txt
