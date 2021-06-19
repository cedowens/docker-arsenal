# docker-arsenal
Spins up a docker container with some helpful tools/utilities for offensive security in macOS/cloud environments. Also installs the needed dependencies for each tool/utility during docker setup.

## Pre-req
Ensure docker is installed and running (https://docs.docker.com/get-docker/)

## Running Docker Rootless
First, I recommend you follow the steps at https://docs.docker.com/engine/security/rootless/ to ensure you are not running your container as root:

## To Run docker-arsenal
> chmod +x run.sh
> 
> sudo ./run.sh

You will be dropped into the container's /arsenal folder upon completion. This Dockerfile takes care of installing the dependencies needed by each tool during docker setup so you can simply navigate to the tool's directory and run the tool (or run the go binaries dropped at ~/go/bin)

## What is installed in docker-arsenal
Several helpful tools for offensive assessments in mac/cloud environments are downloaded/installed:

- Jamf-Attack-Toolkit by Luke Roberts and Calum Hall (https://github.com/FSecureLABS/Jamf-Attack-Toolkit)
- Cloud_Enum by initstring (https://github.com/initstring/cloud_enum)
- Pacu AWS Post Exp Toolkit by Rhino Labs (https://github.com/RhinoSecurityLabs/pacu)
- My AWS Key Triage Tool (https://github.com/cedowens/aws_key_triage_tool)
- My Keygrabber Tool (https://github.com/cedowens/keygrabber)
- My JenkinsHunter Tool (https://github.com/cedowens/JenkinsHunter)
- Gitleaks by zricethezav (https://github.com/zricethezav/gitleaks)
- Evilginx2 by kgretzky (https://github.com/kgretzky/evilginx2)
- Scour by Grines (Brian Stegs) (https://github.com/grines/scour)
- Hashiscan by Grines (Brian Stegs) (https://github.com/grines/hashiscan)
- GD-Thief by Antonio Piazza (https://github.com/antman1p/GD-Thief)
- GDir-Thief by Antonio Piazza (https://github.om/antman1p/GDir-Thief)
- Conf-Thief by Antonio Piazza (https://github.com/antman1p/Conf-Thief)
- Slackhound by Brad Richardson (https://github.com/BojackThePillager/Slackhound)
- SlackPirate by emtunc (https://github.com/emtunc/SlackPirate)
- CredKing by Mike Felch (https://github.com/ustayready/CredKing)
- Jenkins Attack Framework by Accenture (https://github.com/Accenture/jenkins-attack-framework)
- nmap
- dirb (web directory brute forcer)

The following go binaries are dropped at ~/go/bin:
- evilginx2
- hashiscan
- scour

The rest of the tools above will be available at /arsenal

## Shared Volume
run.sh creates a shared volume named "arsenal". If run from a linux host, the volume will be at:

**/var/lib/docker/volumes/arsenal/_data**

You can confirm this by running

> docker inspect arsenal

You can cd into the directory above from the host OS in order to access files within the container.

## Network
run.sh sets the network config value to **--network="host"** so that any port you bind to within the container will also bind on the host OS
