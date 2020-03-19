[![Docker Repository on Quay](https://quay.io/repository/synominit/docker-sonarr-alpine/status "Docker Repository on Quay")](https://quay.io/repository/synominit/docker-sonarr-alpine)[![Build Status](https://travis-ci.com/synominit/docker-sonarr-alpine.svg?token=UxNrdTp4uZjxLv6pUq4x&branch=master)](https://travis-ci.com/synominit/docker-sonarr-alpine)![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/synominit/docker-sonarr-alpine?style=plastic)

# Non Privileged Minimal Sonarr Docker Container using Alpine

The goal of this project is to create a containerized Radarr application that will run non privileged with a minimal attack surface area, you can check the container for any vulnerabilities by clicking on the quay.io badge above.


## Tags
security sonarr minimal

## How to Build

This image is built on Docker Hub automatically any time the upstream OS container is rebuilt, and any time a commit is made or merged to the `master` branch. But if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/install/).
  2. `cd` into this directory.
  3. Run `docker build -t sonarr-alpine .`


## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull synominit/docker-sonarr-alpine`
  3. Run a container from the image:
  ```
  docker run -d -p 8989:8989 \
  -v /path/to/host:/config \
  -v /path/to/host:/downloads \
  -v /path/to/host:/tv \
  synominit/docker-sonarr-alpine
  ```


## Notes
This image is run as a non root user in order to correctly map the folders to allow read and writing.
Users will have to be created on the host specifically for this purpose.  
A script will be added for ease of use, for now the following command can be run on the host:
`adduser -M --uid 76627 --no-create-home sonarr`

Then map the created user to the folders on the host with the appropriate permissions


## Author

  Created in 2020 by [Skye Pham](https://www.skyelp.com/), DevOps Architect, Reverse Engineering and Security Specialist.
