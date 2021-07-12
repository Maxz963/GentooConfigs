#!/bin/sh
echo "getting some stuff set up for you"
# alias virt-manager='sudo virt-manager'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkd='mkdir -pv'
alias yt='youtube-dl'
alias yta="yt -x -f bestaudio/best"
alias ffmpeg="ffmpeg -hide_banner"
echo "ok, now we are 50% done!"
alias ka='killall'
alias g='git'
alias gc='git clone'
alias trem='transmission-remote'
alias sdn='sudo shutdown -h now'
alias p='sudo emerge'
alias ree='sudo reboot'
# adds color to commands.
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ccat='highlight --out-format=ansi'
# This alias is important. It enables the `pauseallmpv` command.
alias mpv='mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)'
echo "all done! now have fun with BASH!"
echo "to list the new alias's, type "alias" in the command prompt 
      and your alias's will show up"
