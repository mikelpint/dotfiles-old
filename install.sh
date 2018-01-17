#!/bin/sh

if [ -f /usr/bin/dialog ]; then
    :
else
    echo "Please install dialog before continuing"
    exit 1
fi

cmd=(dialog --backtitle "mikelpint's dotfiles: Installation script" --menu "Select an option:" 20 40 10)

options=(
    1 "Arch Linux"
    2 "Git"
    3 "Tmux"
    4 "Neovim"
    5 "Zsh"
    6 "BSPWM"
    7 "Polybar"
    8 "X11"
    9 "sxhkd"
    10 "Exit"
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
                mv ~/.tmux ~/.tmux-before
            fi
            stow tmux ;;
        4)
            clear
            if [ -f ~/.config/nvim/init.vim ]; then
                mv ~/.config/nvim ~/.config/nvim-before
            fi
            stow nvim
            if [ -f ~/.config/nvim/plugged/youcompleteme/installed ]; then
                :
            else
                nvim +PlugInstall +qall > /dev/null
                python ~/.config/nvim/plugged/youcompleteme/install.py --clang-completer  > /dev/null
                touch ~/.config/nvim/plugged/youcompleteme/.installed
            fi
            ;;
        5)
            clear
            if [ -f ~/.zshrc ]; then
                mv ~/.zshrc ~/.zshrc.before
                mv ~/.keybindings.zsh ~/.keybindings.zsh.before
                mv ~/.aliases.zsh ~/.aliases.zsh.before
                mv ~/.functions.zsh ~/.functions.zsh.before
            fi
            stow zsh ;;
        6)
            clear
            if [ -f ~/.config/bspwm ]; then
                mv ~/.config/bspwm ~/.config/bspwm-before
                mv ~/.sxhkd ~/.config/sxhkd-before
            fi
            stow bspwm ;;
        7)
            clear
            if [ -f ~/.config/polybar/config ]; then
                mv ~/.config/polybar ~/.config/polybar-before
            fi
            stow polybar ;;
        8)
            clear
            if [ -f ~/.Xresources ]; then
                mv ~/.Xresources ~/.Xresources.before
            fi
            if [ -f ~/.xinitrc ]; then
                mv ~/.xinitrc ~/.xinitrc.before
            fi
            stow x11 ;;
        9)
            clear
            if [ -f ~/.config/sxhkd/sxhkdrc ]; then
                mv ~/.config/sxhkd ~/.config/sxhkd-before
            fi
            stow sxhkd ;;
        10)
            clear
            exit 0 ;;
    esac
done

clear