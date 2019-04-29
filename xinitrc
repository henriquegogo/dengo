feh --bg-scale ~/Pictures/mountains.jpg
xbindkeys
xsetroot -cursor_name left_ptr
xcompmgr -c &
while true; do echo " %{A:xdotool keydown alt key Tab keyup alt:}$(xdotool getwindowfocus getwindowname)%{A} %{r}$(date) "; sleep 0.2; done | lemonbar -bd -u5 -B#DD000000 | sh &
exec evilwm
# exec startfluxbox
