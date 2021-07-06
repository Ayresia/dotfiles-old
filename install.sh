#!/bin/bash

HOME_DIR="/home/$USER"
WORK_PATH=$(dirname $(realpath $0))

function command_exists() {
    command -v "$@" >/dev/null 2>&1
}

function install_required_packages() {
    cd ~;
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
        ttf-jetbrains-mono
    "

    if ! command_exists yay; then
        git clone https://aur.archlinux.org/yay.git;
        cd yay;
        makepkg -si --noconfirm;
    fi

    sudo pacman -Syu $PACMAN_PKGS --noconfirm;
    yay -S --noconfirm $YAY_PKGS;
    yay -Sc --noconfirm;

    [ ! -d $HOME_DIR/.oh-my-zsh ] && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended;
}

function create_symlink() {
    cd $WORK_PATH;
    echo 'Creating symlinks..';

    for DIR in `find -mindepth 2 -maxdepth 2 -not -path '*/\.git/*' | cut -c3-`; do
        [ ! -d $HOME_DIR/$DIR ] && mkdir -p $HOME_DIR/$DIR;
        ln -sf $WORK_PATH/$DIR $HOME_DIR/$DIR;
    done

    for FILE in `find -mindepth 1 -maxdepth 1 -type f -not -path '*.sh' | cut -c3-`; do
        ln -sf $WORK_PATH/$FILE $HOME_DIR/$FILE;
    done
}

function setup_zsh() {
    echo 'Setting up zsh..';

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
    chsh -s $(which zsh);
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

if [ "$WORK_PATH" == "$HOME_DIR/dotfiles" ]; then
    cd $WORK_PATH;

    install_required_packages;
    create_symlink;
    setup_zsh;
    clean_up;
else
    echo "Make sure the dotfiles folder is located at $HOME_DIR/dotfiles";
fi
