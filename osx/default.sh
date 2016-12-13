#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Restart automatically if the computer freezes
systemsetup -setrestartfreeze on

# Disable hibernation (speeds up entering sleep mode)
sudo pmset -a hibernatemode 0

# Disable the sudden motion sensor as it’s not useful for SSDs
sudo pmset -a sms 0

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true




