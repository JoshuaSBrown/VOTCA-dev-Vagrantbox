############
# Developers
#############
The Vagrant file and ansible playbook have been developed by Carlo Scanelli and Joshua Brown. If you have questions or suggestion feel free to contact me at. 

joshbro42867@yahoo.com

##########
# Purpose
##########
This repo contains a Vagrant file for easily bringing up a virtual machine specifically for developing the VOTCA source code. It should work with out problems on any host operating system. In the case that the development environment becomes corrupt Vagrant provides an easy means to destroy the corrupt virtual machine and start from scratch without the hassle of detailed and custom installation procedures (they are automated). 

###################
# What is included
###################
The vagrant file will automatically setup a CentOS operating system with gui. It is set to use 4GB of ram and 2 CPUs. Once it is finished setting up these settings can be adjusted as needed through the VirtualBox user interface. 

###############
# Installation
###############
Step 1 To quickly get started you will need the following installed on your host operating system:

  o Oracles VirtualBox
  o Vagrant

You should follow the instructions for installing each package according to your host operating system. 

NOTE: If you have Windows 10 it is not recommended to attempt to install Vagrant or Virtualbox on the bash linux subsystem as the linux subsystem at this point is not setup to work well with a graphical user interface. 

Step 2 Once vagrant has been installed it you will also need the guest ansible plugin. It is very straightforward to install:

$ vagrant plugin install vagrant-guest_ansible

##################
# Running Vagrant
##################
To get the development enviornment up and running you simply have to type:

$ vagrant up

This will take a while. After it is finished you will have a fully functioning VM with the latest pull from VOTCAs git repo.

############
# Loggin in
############
To log in you can use:
user name: vagrant
password: vagrant

The VOTCA source code is the /home/vagrant directory. Happy developing!


