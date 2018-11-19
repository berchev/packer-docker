# packer-docker
This is a packer repository that builds docker image and the push it to the Docker Hub

## Files:
- `Vagrantfile` - Contain vagrant box configuration
- `scripts/provision.sh` - this script will install the needed software for our vagrant box(**Packer** and **Docker**)
- `nginx64.json` - file which Packer use in order to create our Docker Image
- `Gemfile` - Specify the the ruby version, and all gems needed for **Kitchen** test
- `.kitchen.yml` - **Kitchen** configuration file
- `test/integration/default/check_pkg.rb` - Script needed to **Kitchen** in order to test whether nginx is installed on your box. 

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

### Prepare your environment for **kitchen** testing
- Get inside into **packer-docker** directory and type `vagrant ssh` in order to login on vagrant VM (this step is only applicable if you logged out from vagrant VM)
- Type: `sudo apt-get install rbenv ruby-dev ruby-bundler`
- Create .bash_profile for vagrant user: `vi ~/.bash_profile`
- Type **i**, in order to get into insert mode. 
- Add the following lines: 
  ```
  eval "$(rbenv init -)"
  true
  export PATH="$HOME/.rbenv/bin:$PATH"
  ```
- Press `ESC`, then `:wq`, in order to exit from vi editor and saving the changes you made.
- Type in your terminal `. ~/.bash_profile` in order to apply the changes made in .bash_profile
- Change to the directory `/vagrant`, where `Gemfile` is located and type: `bundle install` in order to install all needed gems for the test

### Test your box with **kitchen** after creation:
- Type: `bundle exec kitchen list` to list the environment
- Type: `bundle exec kitchen converge` to build environment with kitchen
- Type: `bundle exec kitchen verify` to test the created kitchen environment
- Type: `bundle exec kitchen destroy` in order to destroy the created kitchen environment
- Type: `bundle exec kitchen test` in order to do steps from 3 to 5 in one command

## TODO
