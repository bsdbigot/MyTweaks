# Created by newuser for 5.0.0
 
autoload -U colors && colors
 
PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[cyan]%}%m:%{$fg_no_bold[yellow]%}%~/%{$reset_color%} %# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"
 
PATH=$PATH:/usr/sbin:/sbin:/usr/local/sbin:/var/qmail/bin:/var/mailsys/bin:/usr/local/bin
EDITOR=/usr/bin/vi
 
 
LSCOLORS=gxfxcxdxbxegedabagacad
 
export PATH LSCOLORS
 
alias ls="ls --color=auto"
alias ll="ls -l"
alias psg="~lyndon/bin/psg"
alias bye="clear;exit"
 
set -o vi
 
if [ "$TERM" = "rxvt-cygwin-native" ]; then
    	TERM=rxvt
    	export TERM
fi
 
if [ "$TERM" = "xterm" -o "$TERM" = "rxvt" -o "$TERM" = "screen" ]; then
    	Xcd()
    	{  	 
            	if [ $# -ne 0 ]; then
                    	'cd' "$@"
            	else    
                    	'cd'
            	fi
            	TNM="$USER@"`hostname -s`:${PWD}
            	if [ -n "$STY" ]; then
                    	printf "\033k%s\033\\" "$TNM"
            	else
                    	printf "\033]0;%s\007" "$TNM"
            	fi
    	}
    	alias cd=Xcd
    	Xcd .
fi
