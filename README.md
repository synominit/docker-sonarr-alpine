

## Project Summary Name



## Tags


## How to Build

This image is built on Docker Hub automatically any time the upstream OS container is rebuilt, and any time a commit is made or merged to the `master` branch. But if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/install/).
  2. `cd` into this directory.
  3. Run `docker build -t  .`


## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull synominit/`
  3. Run a container from the image:
```
  docker run -d -p xxxx:xxxx \
  -v /path/to/host:/aaaa \
  -v /path/to/host:/bbbb \
  -v /path/to/host:/cccc \
  synominit/
```


## Notes





## Author

Created in 2020 by [Skye Pham](https://www.skyelp.com/), DevOps Architect, Reverse Engineering and Security Specialist.
