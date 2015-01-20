gnome-settings-daemon &      # handles themes, starts gnome-screensaver. You may have to use gconf to disable it setting the background.
nm-applet &                  # assuming you're using Network Manager
pidgin &                     # if you're using pidgin. You can really put any programs here.
gnome-power-manager &        # for laptops and stuff
gnome-volume-manager &       # for mounting CDs, USB sticks, and such
eval `gnome-keyring-daemon`  # SSH/GPG agent
exec awesome                 # awesome receives xinit's process id; when it terminates, X will be terminated
