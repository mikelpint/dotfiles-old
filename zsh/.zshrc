# Set editor to Vim
export VISUAL=nvim
export EDITOR=$VISUAL

# Add Gem packages to $PATH
export PATH=$PATH:~/.gem/ruby/2.5.0/bin

# Set language to Spanish.
export LANG=es_ES.UTF-8

# Tmux plugin's configuration
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true

# Theme
ZSH_THEME="ys"

# Plugins
plugins=(
    git
    vagrant
    web-search
    take
    wd
    sprunge
    archlinux
    tmux
    sudo
    debian
    osx
)

# Oh My Zsh
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases, keybindings and fuctions
source ~/.functions.zsh
source ~/.aliases.zsh
source ~/.keybindings.zsh
