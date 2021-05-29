#!/usr/bin/env bash
# file complementary to .bashrc, source it there!
# github/remoteVoyager

# variables for specific places
phome="/mnt/c/Users/cp/"
plinhome="/home/mluk"
pdox="$phome/Documents"
pcode="$pdox/Coding"
pwonz="$pcode/Python"
pdotfiles="$plinhome/.config/dotfiles"
pgdrive="$phome/Dysk Google/"
pstud="$pgdrive/!STUDIA"
pcbook="$pgdrive/CODING - knowledge"
pacad="$pstud/pyacademic"
pmluk="$pcode/Web/mluk.pl"
plcode="$plinhome/code"

################################################################################
# ALIASES
################################################################################

# aliases for getting into specific places
alias wonz='cd $pwonz'
alias codd='cd $pcode'
alias stud='cd $pstud'
alias home='cd $phome'
alias dotfiles='cd $pdotfiles'
alias stm='cd $pcode/uC/stm32'
alias down='cd $phome/Downloads'
alias proto='cd $phome/Proton_Dysk'
alias wtools='cd $phome/!Tools'
alias acad='cd $pacad'
alias mluk='cd $pmluk'
alias lcode='cd $plcode'
alias book='cd $pcbook'

# aliases for comands
alias cls='clear'
alias c='clear'
alias rstud='ran $pstud'

# aliases for software wsl
alias clip='clip.exe'
alias py='python3'
alias python='python3'
alias pip='pip3'
alias chrome='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
alias vim='nvim'
alias links='links2'
alias ran='ranger'
alias ww='wslview' # open via default windows app
alias gist='gh gist'
alias cat='pygmentize -g -O style=colorful,lineos=1'
alias emacs='emacs -nw'
alias calc='orpie'

# aliases for git commands
alias gs='git status'
alias gpp='git push'
alias glg='git log --graph'
alias glo='git log --oneline'
alias ginit='git init'
alias gad='git add .'
# alias commit='git commit'
# alias gdif='git diff'
alias gbb='git checkout -b'
alias gpl='git pull'

# clasp aliases
alias clapp='clasp push'
alias clapu='clasp pull'

# emacs utility aliases
alias dsync='~/.emacs.d/bin/doom sync'
alias viema='vim ~/.doom.d/config.el'

# aliases for often visited files
alias vibrc='vim ~/.bash_profile'
alias vifi='vim ~/.config/fish/config.fish'
alias nviminit='vim ~/.config/nvim/init.vim'
alias vitmux='vim ~/.tmux.conf'
alias vzsh='vim ~/.zshrc'

# aliases for sourcing
alias sbrc="source ~/.bashrc"
alias sfi='source ~/.config/fish/config.fish'
alias szs='source ~/.zshrc'

# python utility commands and functions
alias sbin='source ./venv/bin/activate'
alias deac='deactivate'
alias cvenv='python -m venv venv'

################################################################################
# VARIABLES
################################################################################
export EDITOR=nvim;
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONPATH="$pacad"

# add browser global variable to use chrome
export BROWSER='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'

################################################################################
# FUNCTIONS
################################################################################

# create directorty and cd into it
function mcd () {
	if ! [ -d $1 ]; then
		mkdir "./$1"
		cd "./$1"
	else
		echo "$1 exists"
	fi
}

# copy WUT LaTeX template to current dir
function newtex () {
	cp -r "$pacad/misc/tex" ./
}

################################################################################
# CONDITIONAL ALIASES
################################################################################

# exa aliases if exa present
if command -v exa &> /dev/null
then
	# general use
	alias ls='exa'                                                          # ls
	alias l='exa -lbF --git'                                                # list, size, type, git
	alias ll='exa -lbGF --git'                                             # long list
	alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
	alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
	alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list

	# specialty views
	alias lS='exa -1'                                                              # one column, just names
	alias lt='exa --tree --level=2'                                         # tree
fi

# vs code insiders alias
if command -v code-insiders &> /dev/null
then
	alias code='code-insiders'
fi

################################################################################
# TMUX TAKEOVER
################################################################################
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! ["$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	  exec tmux
fi
