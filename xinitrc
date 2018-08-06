while true
do
    volume="Volume: $(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/') |"
    datetime=$(date)

    xsetroot -name "$volume $datetime"
    sleep 1s
done &

feh --bg-scale ~/Pictures/sunset.jpg &
exec dwm
