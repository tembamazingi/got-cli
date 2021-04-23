# Introduction

Setting up a development environment shouldn't be a headache or time-consuming. Nor should it keep you from getting on with the real work - developing awesome products! Disclaimer: biased towards developers working on Mac environments but there should still be some value for those working on Linux/Windows environments too.

## Assumptions + Prerequisites

1. The following software needs to be installed on you Mac prior to getting started:
	* Xcode + Command Line Tools for Mac OS [website](https://developer.apple.com)
	* Homebrew installs the stuff you need that Apple didn't. [website](http://brew.sh/)
	* Homebrew Cask (optional) [website](http://caskroom.io/)

2. ### Workflows:
	 Your work setup is assumed to be structured as follows:
	 * The projects you are working on sit in a folder named *Projects* in your home folder **~/Projects**.

## Installing Homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Once Homebrew is installed, install the following packages (these are essential):

```
$ brew install git
```

Other recommended packages you may want to install via Homebrew:

```
$ brew install curl wget htop-osx sqlite tree youtube-dl caskroom/cask/brew-cask
```
