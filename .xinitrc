xset +fp /home/niklas/.fonts
xset fp rehash
xset b off
xrdb ~/.Xresources
/home/niklas/bin/monitors.sh
unlutter -idle 0.5 &
redshift -c /home/niklas/.config/redshift.conf &
xautolock -detectsleep -time 10 -locker slock &
sxhkd &
exec bspwm
