# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jorge/.fzf/bin* ]]; then
  export PATH="$PATH:/home/jorge/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jorge/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jorge/.fzf/shell/key-bindings.bash"

