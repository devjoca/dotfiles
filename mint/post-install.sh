sudo apt-get update

sudo apt-get -y install zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
ln -s ~/.zprezto/runcoms/zlogin ~/.zlogin
ln -s ~/.zprezto/runcoms/zlogout ~/.zlogout
ln -s ~/.zprezto/runcoms/zpreztorc ~/.zpreztorc
ln -s ~/.zprezto/runcoms/zprofile ~/.zprofile
ln -s ~/.zprezto/runcoms/zshenv ~/.zshenv
ln -s ~/.zprezto/runcoms/zshrc ~/.zshrc
chsh -s /usr/bin/zsh


#Clean-up System
sudo apt-get -y purge openjdk-7-jre openjdk-7-jre-lib openjdk-7-jre-headless
sudo apt-get -y purge hexchat
sudo apt-get -y purge banshee
sudo apt-get -y purge pidgin
sudo apt-get -y purge thunderbird
sudo apt-get -y purge brasero
sudo apt-get -y autoremove
sudo apt-get -y autoclean

sudo apt-get update && sudo apt-get upgrade -y