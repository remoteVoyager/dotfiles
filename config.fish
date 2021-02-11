#/usr/bin/fish
# fish config file
# github/remoteVoyager

# basic aliases
alias cls='clear'

# aliases to places
alias wonz='cd /mnt/c/Users/cp/Documents/Coding/Python'
alias codd='cd /mnt/c/Users/cp/Documents/Coding/'
alias stud='cd /mnt/c/Users/cp/Dysk\ Google/!STUDIA'
alias home='cd /mnt/c/Users/cp'
alias dotfiles='cd ~/.config/dotfiles'
alias stm='cd /mnt/c/Users/cp/Documents/Coding/uC/stm32'
alias down='cd /mnt/c/Users/cp/Downloads'
alias proto='cd /mnt/c/Users/cp/Proton_Dysk'

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
alias ccat='pygmentize -g -O style=colorful,lineos=1'

# aliases for git commands
alias sts='git status'
alias gpp='git push'
alias glg='git log --graph'
alias glo='git log --oneline'
alias ginit='git init'
alias gad='git add .'
alias commit='git commit'

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
alias vibrc='vim ~/.bash_scripts/.bashrc_supp'
alias vifi='vim ~/.config/fish/config.fish'
alias nviminit='vim ~/.config/nvim/init.vim'
alias vitmux='vim ~/.tmux.conf'

# source fish shell config
alias sfi='source ~/.config/fish/config.fish'

# fish prompt
function fish_prompt
    set_color $fish_color_cwd
    echo -n (pwd)
    set_color normal
    echo -n ' ~> '
end

# fish message
function fish_greeting

end

# my variables
export EDITOR=nvim;
export VISUAL=nvim;

# ls coloring
eval (dircolors -c ~/.dircolors)

# functions
function newtex
    cp -r ~/.config/dotfiles/files/tex $PWD
end

# xserver
# uncomment for xserver windows use
# export DISPLAY=(ip route | awk '{print $3; exit}'):0
# export LIBGL_ALWAYS_INDIRECT=1
# export GDK_SCALE=1
#
# emacs remap for non-gui use
alias emacs='emacs -nw'
