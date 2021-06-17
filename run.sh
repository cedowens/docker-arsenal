#!/bin/bash
mkdir -p arsenal && cp Dockerfile arsenal/Dockerfile && cd arsenal
git clone https://github.com/cedowens/MacC2
git clone https://github.com/its-a-feature/Mythic
git clone https://github.com/FSecureLABS/Jamf-Attack-Toolkit
git clone https://github.com/initstring/cloud_enum
git clone https://github.com/D00MFist/PersistentJXA
git clone https://github.com/RhinoSecurityLabs/pacu
git clone https://github.com/cedowens/aws_key_triage_tool
git clone https://github.com/cedowens/keygrabber
git clone https://github.com/cedowens/JenkinsHunter
git clone https://github.com/antman1p/GD-Thief
git clone https://github.com/antman1p/GDir-Thief
git clone https://github.com/antman1p/Conf-Thief
git clone https://github.com/BojackThePillager/Slackhound
git clone https://github.com/emtunc/SlackPirate

docker build . --no-cache -t mac-arsenal
docker volume create arsenal
sudo docker run --rm --network="host" -v arsenal:/arsenal -ti mac-arsenal
cd .. && rm -rf arsenal
