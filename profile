# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# ruby gem bins
PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"

# yarn bins
PATH="$PATH:$HOME/.yarn/bin"

PATH="$PATH:$HOME/hacking/grasshopper/bin/"

export JAVA_HOME=/usr/lib/jvm/default
export ANDROID_HOME="$HOME/Android/Sdk"

# add ~/.local/bin
PATH="$PATH:$HOME/.local/bin"

# add rbenv shims
PATH="$HOME/.rbenv/shims:$PATH"

# prepend isomorphic copy
PATH="/opt/isomorphic-copy/bin:$PATH"

PATH="$PATH:$HOME/go/bin"

DENO_INSTALL="/home/morantron/.deno"
PATH="$DENO_INSTALL/bin:$PATH"
