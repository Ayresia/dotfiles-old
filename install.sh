#!/bin/bash

HOME_DIR="/home/$USER"
WORK_PATH="`pwd`"

function command_exists() {
	command -v "$@" >/dev/null 2>&1
}

function check_updates() {
	echo 'Checking for any updates..';

	git pull origin master;
}

function install_required_packages() {
	echo 'Installing required packages..';

	local PACMAN_PKGS="
		git	
		xorg
		xorg-xinit
		picom
		alacritty
		rofi
		xss-lock
		feh
		zsh
	"

	local YAY_PKGS="
		i3-gaps
		polybar-git
		neovim-nightly-bin
		nerd-fonts-liberation-mono
	"

	if ! command_exists yay; then
		git clone https://aur.archlinux.org/yay.git;
		cd yay;
		makepkg -si --noconfirm;
	fi

	sudo pacman -Syu $PACMAN_PKGS --noconfirm;
	yay -S $YAY_PKGS;
	yay -Sc;
}

function create_symlink() {
	echo 'Creating symlinks..';

	for DIR in `find -mindepth 2 -maxdepth 2 -not -path '*/\.git/*' | cut -c3-`; do
		[ ! -d $HOME_DIR/$DIR ] && mkdir -p $HOME_DIR/$DIR;

		rm -rf $HOME_DIR/$DIR;
		ln -sf $WORK_PATH/$DIR $HOME_DIR/$DIR;
	done

	for FILE in `find -mindepth 1 -maxdepth 1 -type f -not -path '*.sh' | cut -c3-`; do
		rm -rf $HOME_DIR/$FILE;
		ln -sf $WORK_PATH/$FILE $HOME_DIR/$FILE;
	done
}

function clean_up() {
	echo 'Cleaning up..';

	rm -rf yay;
	rm -rf ~/YAY_PKGS;
	rm -rf ~/pkg;
	rm -rf ~/PKGBUILD;
	rm -rf ~/src;
	rm -rf *.tar.zst;
	rm -rf *.tar.gz;
}

function setup_zsh() {
	echo 'Setting up zsh..';

	[ ! -d $HOME_DIR/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
}

check_updates;
install_required_packages;
create_symlink;
clean_up;
setup_zsh;