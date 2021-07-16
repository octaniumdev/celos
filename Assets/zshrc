# Theme
PROMPT="%B%F{034}%n@%m:%F{068}%~%F{007}$ "
eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)

# CelOS Aliases
alias sysup='sudo apt update && sudo apt upgrade && flatpak update'
alias dock-disable='gnome-extensions disable ubuntu-dock@ubuntu.com'
alias dock-enable='gnome-extensions enable ubuntu-dock@ubuntu.com'

# Aliases to show colours for commands for ls, grep or other CLI utilities.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
 
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/adam/.zshrc'
 
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Extensions
source ~/.config/zsh-extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh-extensions/zsh-autosuggestions/zsh-autosuggestions.zsh
