```
d8888b.  .d88b.  d888888b d88888b d888888b db      d88888b .d8888.
88  `8D .8P  Y8. `~~88~~' 88'       `88'   88      88'     88'  YP
88   88 88    88    88    88ooo      88    88      88ooooo `8bo.  
88   88 88    88    88    88~~~      88    88      88~~~~~   `Y8b.
88  .8D `8b  d8'    88    88        .88.   88booo. 88.     db   8D
Y8888D'  `Y88P'     YP    YP      Y888888P Y88888P Y88888P `8888Y'
```

# About

This repository is a public backup of my dotfiles.
They are a mix of other dotfiles and some ideas of my own.

# Installation

This dotfiles can be managed using *GNU Stow* or by using the script located at the root diretory of this repository.

## Using *GNU Stow*

**1.** Clone the repository into your $HOME directory and get into it.

```
git clone https://github.com/mikelpint/dotfiles ~/.dotfiles
```

**2.** Stow the packages you want.

### List of *GNU Stow* packages

|    Name    |            Method           |
|:----------:|:---------------------------:|
| Arch Linux | sudo stow archlinux -t /etc |
|    BSPWM   |          stow bspwm         |
|     Git    |           stow git          |
|   Neovim   |          stow nvim          |
|   Polybar  |         stow polybar        |
|    sxhkd   |          stow sxhkd         |
|    Tmux    |          stow tmux          |
|     X11    |           stow x11          |
|     Zsh    |           stow zsh          |
|     Zsh    |         stow compton        |

# Special thanks

[@jimeh](https:/github.com/jimeh): Tmux theme.
[@danirod](https://github.com/danirod): Some Vim settings.
[@skwp](https://github.com/): Most of ZSH aliases, keybindings and functions.