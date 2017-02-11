function f() {
  if [[ "$#" == 1 ]]; then
    find . -iname "$1"
  elif [[ "$#" == 2 ]]; then
    find $1 -iname "$2"
  else
    echo "f: wat? wrong number of arguments"
  fi
}

function mux_start() {
  tmuxinator start "$1" --no-attach
}

function bd() {
  target_folder=$(cat ~/.bookmarks | fzf-tmux)

  if [[ ! -z $target_folder ]]; then
    cd $target_folder
  fi
}

#m "capr % deploy" release.{staging,production}
function multi() {
  #TODO handle spaces
  for ARGS in ${@:2}
  do
    echo "$1 $ARGS"
  done

  for ARGS in ${@:3}
  do
    $(echo "$1 $ARGS")
  done
}


