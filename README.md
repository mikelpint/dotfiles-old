```
      ██            ██     ████ ██  ██
     ░██           ░██    ░██░ ░░  ░██
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░ 
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████ 
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████ 
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░
```

# About

This repository is a public backup of my dotfiles.
They are a mix of other dotfiles.

# Installation

This dotfiles can be managed using *GNU Stow* or by using the script located at the root of this repository.

## Using *GNU Stow*

**1.** Clone the repository into your $HOME directory and get into it.

```
git clone https://github.com/mikelpint/dotfiles ~/.dotfiles
```

**2.** Stow the packages you want.

### List of *GNU Stow* packages

|    Name   |            Method           |
|:---------:|:---------------------------:|
| archlinux | sudo stow archlinux -t /etc |
|    git    |           stow git          |
|    vim    |           stow vim          |
|    zsh    |           stow zsh          |

# Special thanks

[/u/dotherbarbwa](https://www.reddit.com/user/dothebarbwa): Tmux appearance.  
[@amix](https://github.com/amix): Vim configuration.  
[@skwp](https://github.com/): Most of ZSH aliases, keybindings and functions.  