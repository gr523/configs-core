#!/bin/sh

arr=(
    "nvim"
    "awesome"
    "Scripts"
    "redshift"
    "alacritty"
    "tmux"
    "rofi"
    "Configs"
    "aliases"
    "aliases_arch"
    "picom.conf"
)

shome="/shome"

rsync -a "${shome}/.config/coc" ~/.config/

cd
ln -sf "${shome}/.profile"
# cp ~/.profile ~/.zprofile

mkdir -p ~/.config

cd ~/.config
for i in ${arr[@]}; do
    ln -sf "${shome}/.config/$i" 
done

mkdir -p ~/.local/share/
cd ~/.local/share/
cp -r "${shome}/.local/share/zsh" ./

arr=(
    ".zshrc"
    ".zshenv"
    "highlighters"
    "plugins"
)

ZDIR="${shome}/.config/zsh"

mkdir -p ~/.config/zsh
cd ~/.config/zsh

cp "${ZDIR}/sources" ./
cp -r "${ZDIR}/autoload" ./


for i in ${arr[@]}; do
    ln -sf "${ZDIR}/${i}"
done

mkdir -p ~/.cache
cp -r "${shome}/.cache/gitstatus" ~/.cache/
