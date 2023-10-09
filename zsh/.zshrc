# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export GO111MODULE=on
export GOPATH=$HOME/Dev/go

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv root_indicator dir background_jobs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs time ram)
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_TMUX_AUTOSTART='true'
ZSH_THEME='clean'

source $ZSH/oh-my-zsh.sh
plugins=(git)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$PATH:$GOPATH/bin:/opt/homebrew/bin"
