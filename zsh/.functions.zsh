# Enable sshd if the system is Ubuntu on Windows 10
function wslsshd () {
    if ""echo $(uname -v) | grep -q Microsoft""
    then
                sudo service ssh start
                eval `ssh-agent -s`
                ssh-add
                clear
    fi
}

# Use Ctrl-x,Ctrl-l to get the output of the last command
function last-command () {
zmodload -i zsh/parameter
insert-last-command-output() {
LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}
zle -N insert-last-command-output
bindkey "^X^L" insert-last-command-output
}

# Show metadata of current song
function songmetadata {
    echo "Artist: $(playerctl metadata xesam:Artist)"
    echo "Album: $(playerctl metadata xesam:album)"
    echo "Song: $(playerctl metadata xesam:title)"
}