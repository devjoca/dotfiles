#!/bin/bash

#install misc apps
brew cask install spotify
brew cask install telegram
brew cask install iterm2
brew cask install sequel-pro

#node
brew install node

#install valet with php and mariadb
brew install homebrew/php/php71
brew install composer
brew install mysql
composer global require consolidation/cgr
cgr laravel/valet
cgr laravel/installer



