# packer-docker
This is a packer repository that builds docker image and the push it to the Docker Hub

## Files:
- `Vagrantfile` - Contain vagrant box configuration
- `scripts/provision.sh` - this script will install the needed software for our vagrant box(**Packer** and **Docker**)
- `nginx64.json` - file which Packer use in order to create our Docker Image

## Requiered software:

Durring the building process you will need  **Virtualbox** tool installed.

In order to use the already created box you need **Vagrant** tool installed.

Please find Install section below in order to find out how to install **Virtualbox** and **Vagrant**.


## Install Section:
**Note that following instructions have been tested in Ubuntu**

### Instructions HOW to install `Virtualbox`
- Go to [Virtualbox downloads](https://www.virtualbox.org/wiki/Linux_Downloads) choose **Virtualbox** package
- Type in your terminal: `sudo apt-get install -y virtualbox `

### Instructions HOW to install `Vagrant`
- Download **Vagrant** from [here](https://www.vagrantup.com/downloads.html)
- Click on following link: [Installing vagrant](https://www.vagrantup.com/docs/installation/)

### Instructions HOW to run this project on your computer
- Download the content of **packer-docker** repository: `https://github.com/berchev/packer-docker.git`
- Change to downloaded **packer-docker** directory: `cd packer-docker`
- Type `vagrant up` and wait the command to finish
- Type `vagrant ssh` and you will be connected to newly created machine with installed **Packer** and **Docker** on it.
- Change to /vagrant directory: `cd /vagrant`
- Type on your terminal: `packer build nginx64.json` and the result will be `nginx64:1.10.3` Image.

### Instructions HOW to push your Docker Image **nginx64:1.10.3** to the Docker Hub
- You need to create account in [Docker Cloud]( https://cloud.docker.com/). It requires `username`, `e-mail` and `password`
- After you create account please follow the steps described [here](https://docs.docker.com/docker-cloud/builds/push-images/), in order to push your image to Docker Cloud

## TODO
- use kitchen-docker to test the docker box - ie nginx is installed

## DONE
