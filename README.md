# ml4t-env

### Intro

The information on this page is for those who are interested to have a Python development environment on their own machine. ml4t-env helps set up a virtual machine.

### Prerequisites
* [Virtualbox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)

### Installation
Add Vagrant Box on local machine
```
$ vagrant box add ubuntu/bionic64
```
### Create Virtual Machine
Run `vagrant up` to bring up virtual machine; wait for it to load and configure.

_You will now have a configured VM._

### Login to VM and Create working envionment
_NOTE: you can login by connection to `127.0.0.1 port 2222` and credentials `vagrant/vagrant`_

In the virtual environment created earlier, switch to root user
```
$ sudo su
```
In the virtual environment created earlier, run
```
$ conda activate ml4t
```

### Tear Down
This will destroy the Image
```
$ vagrant destroy
```
