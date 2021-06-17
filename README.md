# docker-arsenal
Spins up a docker container with several helpful tools for offensive security in macOS/cloud environments

## Running Docker Rootless
First, I recommend you follow the steps at https://docs.docker.com/engine/security/rootless/ to ensure you are not running your container as root:

- stop docker

> systemctl stop docker

- if /usr/bin/dockerd-rootless-setuptool.sh is presnt:

> ./dockerd-rootless-setuptool.sh install

- if that file is not present:

> curl -fsSL https://get.docker.com/rootless | sh

- Start docker:

> systemctl --user start docker

- Use rootless context:

> docker context use rootless

## To Run docker-arsenal
> chmod +x run.sh
> ./run.sh

## What is installed in docker-arsenal
Several helpful tools for offensive assessments in mac/cloud environments are downloaded/installed:

- Mythic C2 by Cody Thomas (https://github.com/its-a-feature/Mythic)
- Jamf-Attack-Toolkit by Luke Roberts and Calum Hall (https://github.com/FSecureLABS/Jamf-Attack-Toolkit)
- My MacC2 tool (https://github.com/cedowens/MacC2)
- Cloud_Enum by initstring (https://github.com/initstring/cloud_enum)
- Pacu AWS Post Exp Toolkit by Rhino Labs (https://github.com/RhinoSecurityLabs/pacu)
- My AWS Key Triage Tool (https://github.com/cedowens/aws_key_triage_tool)
- My Keygrabber Tool (https://github.com/cedowens/keygrabber)
- My JenkinsHunter Tool (https://github.com/cedowens/JenkinsHunter)
- PersistentJXA Repo By D00MFist (https://github.com/D00MFist/PersistentJXA)
- Gitleaks by zricethezav (https://github.com/zricethezav/gitleaks)
- Evilginx2 by kgretzky (https://github.com/kgretzky/evilginx2)
- Scour by Grines (Brian Stegs) (https://github.com/grines/scour)
- Hashiscan by Grines (Brian Stegs) (https://github.com/grines/hashiscan)
- GD-Thief by Antonio Piazza (https://github.com/antman1p/GD-Thief)
- GDir-Thief by Antonio Piazza (https://github.om/antman1p/GDir-Thief)
- Conf-Thief by Antonio Piazza (https://github.com/antman1p/Conf-Thief)
- Slackhound by Brad Richardson (https://github.com/BojackThePillager/Slackhound)
- SlackPirate by emtunc (https://github.com/emtunc/SlackPirate)
- nmap
- dirb (web directory brute forcer)

The following go binaries are dropped at ~/go/bin:
- evilginx2
- gitleaks
- hashiscan
- scour

The rest of the tools above will be available at /arsenal

