xset +fp /home/niklas/.fonts
xset fp rehash
xset b off
setxkbmap -option compose:ralt
xrdb ~/.Xresources
amixer -q sset Master mute
#xinput disable 9 # disable touch screen on laptop
#/home/niklas/bin/monitors.sh
unlutter -idle 0.5 &
#redshift -c /home/niklas/.config/redshift.conf &
redshift -l 49:8.4 &
xautolock -detectsleep -time 10 -locker lock &
sxhkd &
exec bspwm
#dwm
#9 rio -term st -virtuals 3
