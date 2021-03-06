set -g theme_short_path yes
fish_add_path /usr/local/opt/ruby/bin
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH="/Users/highsierra/go"
export PATH="$GOPATH/bin:$PATH"
set -gx LDFLAGS /usr/local/opt/ruby/lib
set -gx CPPFLAGS /usr/local/opt/ruby/include
set -gx PKG_CONFIG_PATH /usr/local/opt/ruby/lib/pkgconfig
status --is-interactive; and source (rbenv init -|psub)
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias python='python3'
alias hideDesktopIcons='defaults write com.apple.finder CreateDesktop false && killall Finder'
alias showDesktopIcons='defaults write com.apple.finder CreateDesktop true && killall Finder'
alias startMongo='mongod -f /etc/mongodb.conf'

function reEvaluateDataGrip
  rm -rf ~/Library/Application\ Support/JetBrains/DataGrip2021.1/eval/*
end

# Setting PATH for Python 3.10
# The original version is saved in /Users/highsierra/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.10/bin" "$PATH"

# Setting PATH for Python 3.9
# The original version is saved in /Users/highsierra/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.9/bin" "$PATH"


