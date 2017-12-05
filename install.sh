#!/bin/sh

cmd=(dialog --backtitle "mikelpint's dotfiles: Installation script" --menu "Select an option:" 15 40 6)

options=(
    1 "Arch Linux"
    2 "Git"
    3 "Tmux"
    4 "Vim" 
    5 "Zsh"
    6 "Exit"
)

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
    case $choice in
        1)
            clear
            if [ -f /etc/pacman.conf ]; then
                sudo mv /etc/pacman.conf /etc/pacman.conf.before
            fi
            sudo stow archlinux -t /etc ;;
        2)
            clear
            if [ -f ~/.gitconfig ]; then
                mv ~/.gitconfig ~/.gitconfig.before
            fi
            stow git ;;
        3)
            clear
            if [ -f ~/.tmux.conf ]; then
                mv ~/.tmux.conf ~/.tmux.conf.before
            fi
            stow tmux ;;
        4)
            clear
            if [ -f ~/.vimrc ]; then
                mv ~/.vimrc ~/.vimrc.before
                mv ~/.vim ~/.vim-before
                mv ~/.vim_runtime ~/.vim_runtime-before
            fi
            stow vim ;;
        5)
            clear
            if [ -f ~/.zshrc]; then
                mv ~/.zshrc ~/.zshrc.before
                mv ~/.keybindings.zsh ~/.keybindings.zsh.before
                mv ~/.aliases.zsh ~/.aliases.zsh.before
                mv ~/.functions.zsh ~/.functions.zsh.before
            fi
            stow zsh ;;
    esac
done