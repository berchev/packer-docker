# packer-docker
This is a packer repository that builds docker image

## Files:
- `Vagrantfile` - Contain vagrant box configuration
- `scripts/provision.sh` - this script will install the needed software for our vagrant box(**Packer** and **Docker**)

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



## TODO

### Vagrant project
- Create vagrant project
- check refferance vagrant project https://github.com/kikitux/xenial-docker

### Packer project
- build docker image with nginx


## DONE
