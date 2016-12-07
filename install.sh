#!/bin/bash

#install telegram
brew cask install telegram

#install spotify
brew cask install spotify

#install nylas mail client
brew cask install nylas-n1

#install iterm2
brew cask install iterm2

#install zsh and oh my zsh
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


#node and yarn
brew install node
brew install yarn

#install valet with php and mariadb
brew install homebrew/php/php70
brew install mariadb
brew install composer
composer global require consolidation/cgr
cgr laravel/valet
cgr laravel/installer

#install sqeuelpro
brew cask install sequel-pro


