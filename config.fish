#/usr/bin/fish
# fish config file
# github/remoteVoyager

# basic aliases
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

# aliases for git commands
alias sts='git status'
alias gpp='git push'
alias glg='git log --graph'
alias ginit='git init'
alias gad='git add .'
alias commit='git commit'

# python utility commands and functions
alias sbin='source ./venv/bin/activate'
alias deac='deactivate'
alias cvenv='python -m venv venv'

# aliases for shell scripts
alias docs_backup='sh ~/.bash_scripts/archive_gdrive_docs_github.sh'

# aliases for often visited files
alias vibrc='vim ~/.bash_scripts/.bashrc_supp'
alias vifi='vim ~/.config/fish/config.fish'
alias nviminit='vim ~/.config/nvim/init.vim'

# source fish shell config
alias sfi='source ~/.config/fish/config.fish'

# fish prompt
function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' ~> '
end

# add browser global variable to use chrome
export BROWSER='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'

# my variables
export EDITOR=nvim;
export VISUAL=nvim;

# ls coloring
eval (dircolors -c ~/.dircolors)


