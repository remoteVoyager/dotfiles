#!/usr/bin/env bash
# file complementary to .bashrc, source it there!
# github/remoteVoyager


# variables for specific places
phome="/mnt/c/Users/cp"
plinhome="/home/mluk"
pdox="$phome/Documents/"
pcode="$pdox/Coding/"
pwonz="$pcode/Python/"
pdotfiles="$plinhome/.config/dotfiles/"
pstud="$phome/Dysk Google/!STUDIA"
pacad="$pstud/pyacademic/"

# aliases for getting into specific places
alias wonz='cd $pwonz'
alias codd='cd $pcodi'
alias stud='cd $pstud'
alias home='cd $phome'
alias dotfiles='cd $pdotfiles'
alias stm='cd /mnt/c/Users/cp/Documents/Coding/uC/stm32'
alias down='cd /mnt/c/Users/cp/Downloads'
alias proto='cd /mnt/c/Users/cp/Proton_Dysk'
alias wtools='cd /mnt/c/Users/cp/!Tools'
alias acad='cd $pacad'

# aliases for comands
alias cls='clear'

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

# aliases for git commands
alias sts='git status'
alias gpp='git push'
alias glg='git log --graph'
alias glo='git log --oneline'
alias ginit='git init'
alias gad='git add .'
alias commit='git commit'
alias gdif='git diff'
alias gbb='git checkout -b'
alias gpl='git pull'

# clasp aliases
alias clapp='clasp push'
alias clapu='clasp pull'

# python utility commands and functions
alias venva='. ./.env/bin/activate.fish'
alias venvd='deactivate'
alias venvc='python -m venv .env'

# emacs utility aliases
alias dsync='~/.emacs.d/bin/doom sync'
alias viema='vim ~/.doom.d/config.el'

# aliases for shell scripts
alias docs_backup='sh ~/.bash_scripts/archive_gdrive_docs_github.sh'

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

# add browser global variable to use chrome
export BROWSER='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'

# my variables
export EDITOR=nvim;

# python utility commands and functions
alias sbin='source ./venv/bin/activate'
alias deac='deactivate'
alias cvenv='python -m venv venv'

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! ["$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
	  exec tmux
fi
