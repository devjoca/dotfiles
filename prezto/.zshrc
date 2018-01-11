if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.config/composer/vendor/bin

export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
