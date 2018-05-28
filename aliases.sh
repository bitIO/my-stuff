alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias wget='wget --no-check-certificate'
alias resetSpotlight='sudo mdutil -a -i off;sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist;sudo mdutil -a -i on'

# SERVICES
alias redis-start='redis-server /usr/local/etc/redis.conf'
alias mongo-start='mongod --config /usr/local/etc/mongod.conf'

# BEEVA
alias token-arq='anwbis -p arquitectura -e dev -r developer -b firefox --get_session'

# OPENWEB
alias anwbis-openweb-dev='anwbis -p webpublicas -e pro -r developer --profile default'
