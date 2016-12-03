#!/bin/bash

#install telegram
brew cask install telegram

#install spotify
brew cask install spotify

#install nylas mail client
brew cask install nylas-n1

#install iterm2
brew cask install iterm2

#install zsh
brew install zsh zsh-completions


#install valet with php and mariadb
brew install homebrew/php/php70
brew install mariadb
brew install composer
composer require consolidation/cgr
cgr laravel/valet
cgr laravel/installer


