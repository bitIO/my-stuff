# OSX aliases
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias wget='wget --no-check-certificate'
alias resetSpotlight='sudo mdutil -a -i off;sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo mdutil -a -i on'

alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
