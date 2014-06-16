## csco-lamp-1 Dockerfile


This repository contains **Dockerfile** of csco-lamp-1 for [Docker](https://www.docker.io/)


### Dependencies

* None


### Installation

1. Install [Docker](https://www.docker.io/) natively or on [MAC using boot2docker](https://docs.docker.com/installation/mac/) 

2. Download from public [Docker Hub](https://registry.hub.docker.com/u/rbannist/csco-lamp-1/): `docker pull rbannist/csco-lamp-1`

   (alternatively, you can build an image from Dockerfile: `docker build -t="rbannist/csco-lamp-1" github.com/rbannist/csco-lamp-1`)


### Usage

    docker run -i -t -p 80:80 rbannist/csco-lamp-1 [bash]


### On a Mac running boot2docker

 1. VBoxManage controlvm boot2docker-vm natpf1 "web,tcp,,8080,,80"

 2. boot2docker ssh ip addr show dev eth1 -> Get IP address

 3. Browse to http://'ip address':8080

