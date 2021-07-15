export XDG_SESSION_TYPE=x11
export GDK_BACKEND=x11
exec gnome-session

if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

#setxkbmap -layout us -variant intl
