# My Raspbian Dotfiles and General Setup

This the general setup I use on my Raspberry Pi B+ running Raspbian. In addition to instructions relating to the installation and use of the dotfiles, I've also added quite a bit of extra info on how I setup a Pi from scratch. Obviously, there are many ways to go about this depending on how you plan to use your Pi, but these are general steps that I use commonly and are mainly included here for my own convenience.

The dotfiles themselves have been adapted from my [OS X setup](https://github.com/joshukraine/dotfiles). Comments and suggestions welcome. :)

### Setting up the Pi

[Flash the SD card](http://www.raspberrypi.org/documentation/installation/installing-images/README.md) with the [latest Raspbian image](http://www.raspberrypi.org/downloads/).

Boot the Pi from the new card and run through the initial config.

Connect to the local wifi network either [from the command line](https://github.com/joshukraine/dotfiles-raspbian/blob/master/wifi-setup.md) or [via the GUI](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-raspbian).

Test your connection.

    ping -c 5 8.8.8.8

Update packages.

    sudo apt-get -y update && sudo apt-get -y upgrade

Install other packages.

    sudo apt-get install -y curl zsh vim tree nmap tmux git figlet fonts-inconsolata


### Dotfiles Setup

Verify that `zsh` is installed.

    which zsh
    #=> /usr/bin/zsh

Change your shell to `zsh`.

    chsh -s $(which zsh)


Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh).

    curl -L http://install.ohmyz.sh | sh

Close and reopen terminal to complete `oh-my-zsh` install.

*NOTE: The rest of the setup process assumes you are using zsh and not bash.*

Clone this repo.

    git clone https://github.com/mhazley/dotfiles-raspbian.git ~/.dotfiles

Run `setup.sh` to complete the setup.

    ~/.dotfiles/setup.sh

### Extras
    
Remap the `caps lock` key to `ctrl`.

	# Open the file /etc/default/keyboard
	sudo vim /etc/default/keyboard
	
	# Edit the XKBOPTIONS entry
	XKBOPTIONS="terminate:ctrl_alt_bksp,ctrl:nocaps"
	
	# After saving and closing the file, run:
	sudo dpkg-reconfigure keyboard-configuration
	
	# Restart the Pi

### Notes

In case you're not me, you'll want to add your own name and email to `~/.dotfiles/gitconfig`.


