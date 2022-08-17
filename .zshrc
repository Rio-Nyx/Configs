# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# GTK_THEME="WhiteSurRio-Dark-solid"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git dirhistory zoxide zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
 # FROM .bashrc
export EDITOR='nvim'
ZSH_THEME="powerlevel10k/powerlevel10k"

# functions that should be before aliases
# unalias ls
dli(){
    sudo dnf localinstall $(\ls | grep -i $1)
}


alias elm='matrix'
alias record="simplescreenrecorder --start-hidden --start-recording"
alias j=". ~/.local/Apps/scripts/jump/j"
alias di='sudo dnf install'
alias ds='dnf search'
alias du='sudo dnf update'
alias dr='sudo dnf remove'
alias dl='dnf list --installed'

alias c='clear'
# alias rcu='bash ~/.bashrc'
# alias rco='nvim ~/.bashrc && bash ~/.bashrc'
alias open='xdg-open'

# alias ..='cd ..'
# alias ...='cd ../../../'
# alias ....='cd ../../../../'
# alias .....='cd ../../../../'

alias mkdir='mkdir -pv'
alias wget='wget -c'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias mv='mv -i '
alias rm='rm -i '
alias cp='cp -v'

# alias youtube='yt-dlp -x --embed-thumbnail --audio-format mp3 "ytsearch:'
alias ra='ranger'
alias n='nvim'
alias sn='sudo nvim'
alias mvim='nvim --cmd "let vim_maximal=1" '
alias vi='vim'
alias vim='vimx'

alias toClip='xsel -b <'
alias logout-user='sudo pkill -u rahul'

alias lf='ls -ap | grep -v / '
# alias ls="exa -G"
alias ls='exa -G --color=always --icons -h --group-directories-first '
alias ld='exa -D '
alias man='tldr '
alias less='bat '
alias s='bat '
# from .bashrc 
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
	mkdir -p $1 && cd $1
}

# do a run function to do any executable - like open an html file in browser , run java,python,c,c++,etc,..
compile(){
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
			g++ -std=c++11 -O2 -Wall $filename
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

cpp(){
    g++ -std=c++11 -O2 -Wall $1 && echo "type the input:" && ./a.out
    
}

locss(){
    gsettings set org.gnome.gnome-screenshot auto-save-directory ~/Pictures/R4/$1
}

begin(){
    case $1 in
        mysql)
            systemctl start mysqld && mysql -u root -p
        ;;
    esac
}
song(){
    yt-dlp -x --embed-thumbnail --audio-format mp3 "ytsearch:$1 song"
}

rio(){
  echo "hola, mi amigo! No estoy completa todavía\n¿Cómo estuvo su día?"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

