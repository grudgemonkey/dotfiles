#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#original bash = PS1='[\u@\h \W]\$ '
PS1='\[\033[1;35m\]desktop2000 \[\033[1;32m\]\W \[\033[0;34m\]->\[\033[0m\]  '

# util aliases
alias la='ls -la'
alias mov='cd $1 && la'
alias todo='vim ~/todo.txt'

##edit bashrc
alias bashedit='vim ~/.dotfiles/.bashrc'
alias rebash='source ~/.dotfiles/.bashrc'

# installation aliases
alias get='sudo pacman -S'
alias upd='sudo pacman -Syu'

# bluetoothctl
alias btc='bluetoothctl'

# mednafen
alias med='mednafen --sound.driver sdl'

#ffmpeg
alias record='ffmpeg -video_size 1920x1080 -framerate 24 -f x11grab -i :0.0 -f pulse -i default'

# config aliases
## edit alacritty config
alias alac='vim ~/.config/alacritty/alacritty.yml'

#fun
alias chadpirate='feh ~/pictures/memes/chadpirate.jpg'
# Emulate an MS-DOS prompt in your Linux shell.
# Laszlo Szathmary (jabba.laci@gmail.com), 2011
# Project home page:
# https://ubuntuincident.wordpress.com/2011/02/08/emulate-the-ms-dos-prompt/
#
#
# Modified by Soldier of Fortran
#
# Add to you ~/.bashrc file with: 'source ~/.themes/95/bashrc'

function msdos_pwd
{
    local dir="`pwd`"

    echo $dir | tr '/' '\\'
}

export PS1='C:`msdos_pwd`> '

echo 
echo
echo "Microsoft(R) Windows 95"
echo "   (C)Copyright Microsoft Corp 1981-1996."
echo

