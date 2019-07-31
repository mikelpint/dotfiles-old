# Set editor to Neovim
export VISUAL=nvim
export EDITOR=$VISUAL

# Add sbin to PATH
export PATH=$PATH:/sbin

# Add downloaded binaries to PATH
export PATH=$PATH:~/.binaries

# Add Gem packages to $PATH
export PATH=$PATH:~/.gem/ruby/2.5.0/bin

# Set language to Spanish.
export LANG=es_ES.UTF-8

# Tmux plugin's configuration
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=true

#auto-ls plugin's configuration
AUTO_LS_COMMANDS=(ls)
AUTO_LS_NEWLINE=false

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
    zsh-syntax-highlighting
    zsh-autosuggestions
    vscode
    ubuntu
)

# Oh My Zsh
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Aliases, keybindings, fuctions and extra plugins
source ~/.functions.zsh
source ~/.aliases.zsh
source ~/.keybindings.zsh
source ~/.moreplugins.zsh
