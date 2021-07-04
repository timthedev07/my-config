set -g theme_short_path yes
fish_add_path /usr/local/opt/ruby/bin
set -gx LDFLAGS /usr/local/opt/ruby/lib
set -gx CPPFLAGS /usr/local/opt/ruby/include
set -gx PKG_CONFIG_PATH /usr/local/opt/ruby/lib/pkgconfig
status --is-interactive; and source (rbenv init -|psub)

function reEvaluateDataGrip
  rm -rf ~/Library/Application\ Support/JetBrains/DataGrip2021.1/eval/*
end