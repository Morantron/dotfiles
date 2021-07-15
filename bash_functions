#!/usr/bin/env bash

function f() {
  if [[ "$#" == 1 ]]; then
    find . -iname "$1"
  elif [[ "$#" == 2 ]]; then
    find $1 -iname "$2"
  else
    echo "f: wat? wrong number of arguments"
  fi
}

function bd() {
  target_folder=$(cat ~/.bookmarks | fzf)

  if [[ ! -z "$target_folder" ]]; then
    eval cd $target_folder
  fi
}

# quickly change sheet in timetrap
function tt() {
  raw_target_sheet=$(t list | sed 1d | awk '{ print $1 }' | fzf)

  target_sheet=$(echo "$raw_target_sheet" | sed "s/^[ -\*]//")

  t o
  t s $target_sheet
  #t i
}

function statik() {
  python -m http.server 0
}

function local_qr() {
  local port=$1
  local addr=$(ip route get 1 | awk '{print $7;exit}')
  local full_address="http://${addr}:${port}/"

  echo "Showing server at ${full_address}"
  echo "$full_address" | qrcode
}

function last_downloaded_file() {
  echo "'$HOME/Downloads/$(ls -tr1 ~/Downloads/ | tail -1 | sed "s/'/\\'/g")'"
}

function today() {
  echo "$(date +'%Y%m%d%H%M%S')"
}
