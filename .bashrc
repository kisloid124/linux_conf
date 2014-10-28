# .bashrc

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups:ignorespace

# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias tmux='tmux attach || tmux new'

export PS1="\e[1;36m[\u@\h \W]\$ \e[m "
export PS1='\A \[\e[1;36m\][\u@\h \W]\$\[\e[0m\] '
export EDITOR=vim
alias ls='ls --color=auto'
export LS_COLORS='no=00;37:fi=00;37:di=01;36:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.btm=01;31:*.sh=01;31:*.run=01;31:*.tar=33:*.tgz=33:*.arj=33:*.taz=33:*.lzh=33:*.zip=33:*.z=33:*.Z=33:*.gz=33:*.bz2=33:*.deb=33:*.rpm=33:*.jar=33:*.rar=33:*.jpg=32:*.jpeg=32:*.gif=32:*.bmp=32:*.pbm=32:*.pgm=32:*.ppm=32:*.tga=32:*.xbm=32:*.xpm=32:*.tif=32:*.tiff=32:*.png=32:*.mov=34:*.mpg=34:*.mpeg=34:*.avi=34:*.fli=34:*.flv=34:*.3gp=34:*.mp4=34:*.divx=34:*.gl=32:*.dl=32:*.xcf=32:*.xwd=32:*.flac=35:*.mp3=35:*.mpc=35:*.ogg=35:*.wav=35:*.m3u=35:';
alias grep='grep --color=auto'
export GREP_COLOR="1;31"


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
