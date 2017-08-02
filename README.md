[![Build Status](https://travis-ci.org/tonyganga/docker-centos7.svg?branch=master)](https://travis-ci.org/tonyganga/docker-centos7) [![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/booleanismaybe/docker-centos7/)

# CentOS 7 Ansible Molecule Test Image

CentOS 7 Docker image for testing [Ansible](https://www.ansible.com/) with [Molecule](https://molecule.readthedocs.io/en/latest/#)

# Build

This image will be built everytime there is an update to the upstream `FROM centos:7`

```
$ make build
```
# Test

To test this image run the following.

```
$ make test
```

This will execute a task to run the docker container and verify that Ansible and Molecule depedencies are cleared up.
