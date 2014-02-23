if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +dpms
xset dpms 0 0 300

exec i3 -V >> ~/.i3/i3log 2>&1


#exec openbox-session
#exec gnome-session-cinnamon

