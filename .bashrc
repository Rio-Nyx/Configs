# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#export PATH="$PATH:/usr/lib/jvm/java-15-openjdk-15.0.0.36-1.rolling.fc33.x86_64-slowdebug"
#export JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.272.b10-0.fc33.x86_64"
export EDITOR=gedit
export PATH="$PATH:/home/rahul/flutter/flutter_linux_1.22.4-stable/flutter/bin"
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# PS1='[Rio_Nyx@\h \W]\$ ' 
#PS1='[Rio_Nyx@ \W]\$ '

# default --> PS1='[\u@\h \W]\$ '


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# change directory
goto(){
	x=$(find . -type d -iname "$1" -print -quit)
	cd "$1"
}

# alternate for mac open
fopen(){
	x=$(find . -iname "$1" -print -quit )
	xdg-open "$x"
}

runcc(){
	./a.out && rm a.out
}

mkcd(){
	mkdir $1 && cd $1
}

# do a run function to do any executable - like open an html file in browser , run java,python,c,c++,etc,..
run(){
	filename=$1
	extension="${filename##*.}"
#	if [ "$extension" = "c" ]; then
#			gcc $filename
#	elif [ "$extension" = "html" ]; then
#			firefox "$filename"
#	fi
	case $extension in
		c)
			gcc $filename
		;;
		cpp)
			g++ -O2 -Wall $filename
		;;
		html)
			firefox $filename &
		;;
		java)
			echo "compiling using $version"
			version=$(javac -version)
			javac $filename
		;;
		sh)
			bash $filename
		;;
		*)
			echo "unknown filetype"
		;;
		esac
}
#
# backup(){
#     rclone copy --update --verbose "$1" google-drive:BackUps/"$2"
# }

backup(){
    /usr/bin/rclone copy --update --verbose --transfers 30 --checkers 8 --contimeout 60s --timeout 300s --retries 3 --low-level-retries 10 --stats 1s  "$1"   google-drive:BackUps/"$2"
}

#start-snapd(){
#	systemctl unmask packagekit snapd && systemctl start packagekit snapd 
#}
#stop-snapd(){
#	systemctl mask packagekit snapd
#}

#start-bluetooth(){
#	systemctl unmask bluetooth && systemctl start bluetooth 
#}
#stop-bluetooth(){
#	systemctl mask bluetooth
#}


#========================================================================================================================

# aliases

alias di='sudo dnf install'
alias ds='dnf search'
alias du='sudo dnf update'
alias dr='sudo dnf remove'

alias c='clear'
alias rcu='bash ~/.bashrc'
alias rco='gedit ~/.bashrc && bash ~/.bashrc'
alias open='xdg-open'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias mkdir='mkdir -pv'
alias wget='wget -c'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -v'
alias youtube='youtube-dl -x --embed-thumbnail --audio-format mp3'
alias n='nvim'
