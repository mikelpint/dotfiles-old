# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# List files matching the specified name
alias lsg='ll | grep'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Vim functions
alias :q='exit'

# Colored cat
if [ -f /usr/bin/lolcat ]; then
    alias cat='lolcat'
fi

# Simplified man pages
if [ -f /usr/bin/tldr ]; then
    alias man='tldr'
fi

# Editing dotfiles
alias zshconf="$EDITOR ~/.zshrc"
alias visudo="$EDITOR /etc/sudoers"
alias vimconf="$EDITOR ~/.vimrc"
alias tmuxconf="$EDITOR ~/.tmux.conf"
alias gitconf="$EDITOR ~/.gitconfig"

# Spotify
alias spp="playerctl play-pause"
alias sm="songmetadata"

# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias glc='git log --graph --decorate --oneline --all'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb'
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'