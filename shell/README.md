# Introduction

Setting up a development environment shouldn't be a headache or time-consuming. Nor should it keep you from getting on with the real work - developing awesome products! Disclaimer: biased towards developers working on Mac environments but there should still be some value for those working on Linux/Windows environments too.

## Assumptions + Prerequisites

1. The following software needs to be installed on you Mac prior to getting started:
	* Xcode + Command Line Tools for Mac OS [website](https://developer.apple.com)
	* VirtualBox [website](https://www.virtualbox.org/)
	* Vagrant [website](https://www.vagrantup.com/)
	* Homebrew installs the stuff you need that Apple didn't. [website](http://brew.sh/)
	* Homebrew Cask (optional) [website](http://caskroom.io/)

2. ### Workflows:
	 Your work setup is assumed to be structured as follows:
	 * The projects you are working on sit in a folder named *Projects* in your home folder **~/Projects**.
	 * Any project within the *Projects* folder is housed in a folder with *'.dev'* as a suffix, e.g. **~/Projects/awesomeproject.dev or ~/Projects/awesomeproject.local**. (Used by Vagrant to add entries for /etc/hosts for you.)

## Installing Homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Once Homebrew is installed, install the following packages (these are essential):

```
$ brew install git ansible
```

Other recommended packages you may want to install via Homebrew:

```
$ brew install curl wget htop-osx sqlite tree youtube-dl caskroom/cask/brew-cask
```

## Vagrant: Getting Started

### Recommended Vagrant plugins
* **vagrant-hostmanager:** Manages the /etc/hosts file on guests within a multi-machine environment [ [source](https://github.com/smdahlen/vagrant-hostmanager) ].
* **vagrant-gatling-rsync:** An rsync watcher that uses fewer host resources [ [source](https://github.com/smerrill/vagrant-gatling-rsync) ].
* **vagrant-triggers:** Define scripts that will run on the host before and/or after Vagrant commands [ [source](https://github.com/emyl/vagrant-triggers) ].
* **vagrant-vbguest:** Keeps your VirtualBox Guest Additions up to date [ [source](https://github.com/dotless-de/vagrant-vbguest) ].
* **vagrant-cachier:** Faster provisioning by sharing a common package cache among similar VM instances [ [source](https://github.com/fgrehm/vagrant-cachier) ].

### Installing Vagrant plugins
```
$ vagrant plugin install vagrant-hostmanager vagrant-gatling-rsync vagrant-triggers vagrant-vbguest vagrant-cachier
```

## Setting up Ruby (if using Capistrano for automated deployments)

Step 1: Install chruby and ruby-install:

```
$ ruby -v #Should return version for the default Ruby that ships with Mac OS X.
$ brew install chruby ruby-install
$ exec $SHELL -l
$ ruby-install ruby x.x.x
$ ruby -v #Should now return ruby x.x.x installed above.
```

Step 2: Install Bundler and rubygems-update (you will need these later):

```
$ gem install bundler rubygems-update
```

Step 3: Within any folder containing a file named *Gemfile*, run the following command:

```
$ bundle install
```
