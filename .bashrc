#
# ~/.bashrc
#

alias music="cmus"
alias inster="yaourt"
alias upder="yaourt -Su --aur"
alias update="sudo pacman -Syyu"
# alias word="wine ~/.wine/drive_c/Program\ Files/Microsoft\ Office/Office14/WINWORD.EXE"
# alias ppt="wine ~/.wine/drive_c/Program\ Files/Microsoft\ Office/Office14/POWERPNT.EXE"
# alias exel="wine ~/.wine/drive_c/Program\ Files/Microsoft\ Office/Office14/EXCEL.EXE"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# For transparancy
[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null


alias ls='ls --color=auto'
alias install='sudo pacman -S'
alias galliga='/home/clit/code/projet/SpaceAttack/a.out'
alias pdf='evince'
alias archey=archey3



if [ -f ~/.bash_function ] ; then
	. ~/.bash_function
fi

if [ -f ~/Scripts ] ; then
	. ~/Scripts
fi
GOPATH=/home/anon/gocode
export PATH=~/Scripts:$PATH
export VISUAL="vim"
export WINEARCH=win32

PS=1'[\u@\h \W]\$ '

