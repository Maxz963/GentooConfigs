# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
#eval $(dircolors -b $HOME/.dircolors)
alias ls='ls --color'
LS_COLORS='di=1;35:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90:*.png=35:*.gif=36:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.doc=104:*.docx=104:*.odt=104:*.csv=102:*.xlsx=102:*.xlsm=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106'
export LS_COLORS
# these are just my alias's
alias virt-manager='sudo virt-manager'
#bat=cat /sys/class/power_supply/BAT?/capacity'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkd='mkdir -pv'
alias yt='youtube-dl'
alias yta="yt -x -f bestaudio/best"
alias ffmpeg="ffmpeg -hide_banner"
alias ka='killall'
alias g='git'
alias x='startx'
#trem='transmission-remote
alias sdn='sudo shutdown -h now'
alias p='sudo emerge'
alias ree='sudo reboot'
alias s='emerge -S'
alias gc='git clone'
alias e='sudo emerge --ask --autounmask-continue'
alias cls='clear'
alias v='vim'
alias u='uname -r'
# adds color to commands.
alias ls='ls -hN --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ccat='highlight --out-format=ansi'
# This alias is important. It enables the `pauseallmpv` command.
alias mpv='mpv --input-ipc-server=/tmp/mpvsoc$(date +%s)'
