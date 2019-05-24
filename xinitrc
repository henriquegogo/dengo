feh --bg-scale ~/Pictures/mountains.jpg &
xbindkeys
xsetroot -cursor_name left_ptr
xcompmgr -c &
while true; do echo " $(xdotool getwindowfocus getwindowname) %{r}$(date) "; sleep 0.2; done | lemonbar -bd -u5 -B#DD000000 | sh &
exec evilwm
