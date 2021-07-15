# Alias definitions
alias sysup='sudo apt update && sudo apt upgrade && flatpak update'
alias dock-disable='gnome-extensions disable ubuntu-dock@ubuntu.com'
alias dock-enable='gnome-extensions enable ubuntu-dock@ubuntu.com'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Adding zsh_aliases file
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
