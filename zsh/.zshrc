# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export GO111MODULE=on
export GOPATH=$HOME/Dev/go

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_TMUX_AUTOSTART='true'
ZSH_THEME='clean'

source $ZSH/oh-my-zsh.sh
plugins=(git)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$PATH:$GOPATH/bin:/opt/homebrew/bin"
