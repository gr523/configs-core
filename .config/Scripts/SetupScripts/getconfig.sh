#!/bin/sh

arr=(
    ".config/nvim"
    ".config/coc"
    ".config/awesome"
    ".config/Scripts"
    ".config/redshift"
    ".config/alacritty"
    ".config/tmux"
    ".config/rofi"
    ".config/spectrwm"
    ".config/openbox"
    ".config/polybar"
    ".config/terminator"
    ".config/Configs"
    ".config/aliases"
    ".config/aliases_arch"
    ".profile"
)

shome="/shome"

mkdir -p ~/.config

cd ~/.config
for i in ${arr[@]}; do
    ln -sf "${shome}/$i" 
done


mkdir -p ~/.local/share/
cd ~/.local/share/
ln -sf "${shome}/.local/share/zsh"

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
cd ~/.cache
ln -sf "${shome}/.cache/gitstatus"
