# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

# yarn bins
PATH="$PATH:$HOME/.yarn/bin"

PATH="$PATH:$HOME/hacking/grasshopper/bin/"

export JAVA_HOME=/usr/lib/jvm/default
export ANDROID_HOME="$HOME/Android/Sdk"

# add ~/.local/bin
PATH="$PATH:$HOME/.local/bin"

# prepend isomorphic copy
#PATH="/opt/isomorphic-copy/bin:$PATH"

PATH="$PATH:$HOME/go/bin"

DENO_INSTALL="/home/morantron/.deno"
PATH="$DENO_INSTALL/bin:$PATH"

# npm system wide installtions
PATH="$HOME/.local/bin:$PATH"
