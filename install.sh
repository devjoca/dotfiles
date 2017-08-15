#!/bin/bash

#install misc apps
brew cask install telegram
brew cask install spotify

#install iterm2
brew cask install iterm2

#node and yarn
brew install node
brew install yarn

#install valet with php and mariadb
brew install homebrew/php/php71
brew install composer
brew install mysql
composer global require consolidation/cgr
cgr laravel/valet
cgr laravel/installer

#install sqeuelpro
brew cask install sequel-pro


