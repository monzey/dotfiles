#! /bin/sh

sudo nixos-generate-config

sudo rm -rf /etc/nixos/configuration.nix
sudo rm -rf /etc/hypr/hyprland.conf

sudo stow bat
sudo stow git
sudo stow ranger
sudo stow wofi
sudo stow regreet
sudo stow nvim
sudo stow zsh
sudo stow lazygit
sudo stow kitty
sudo stow btop
sudo stow mako
sudo stow scripts -t /usr
sudo stow nixos -t /etc
sudo stow hyprland

curl -L git.io/antigen > $HOME/.antigen.zsh

mkdir -p ~/.local/share/icons/Bibata
cp -r cursor/* ~/.local/share/icons/Bibata

# copy wallpaper
cp wall.png ~/
sudo mkdir -p /usr/share/backgrounds/
sudo cp wall.png /usr/share/backgrounds/greeter

sudo nixos-rebuild switch

chsh -s $(which zsh)
