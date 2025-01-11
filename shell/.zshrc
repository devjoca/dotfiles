if [[ -o interactive ]]; then
    fastfetch 
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history defaults
setopt append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
HISTSIZE=32768
SAVEHIST="${HISTSIZE}"
HISTFILE=~/.zsh_history

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

# File system
alias ls='eza -lh --group-directories-first --icons'
alias ll='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias fd='fdfind'
alias cd='z'

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Tools
alias n='nvim'
alias g='git'
alias d='docker'
alias bat='batcat'
alias lzg='lazygit'
alias lzd='lazydocker'

# Git
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'

#Tools

if command -v mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi


if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi



export PYTHONPATH="${PYTHONPATH}:/home/joca-desktop/Code/immersa/datavinci/datavinci/connectors"

poetry config virtualenvs.in-project true
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
