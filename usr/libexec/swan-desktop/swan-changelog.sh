sleep 5
timestamp="/var/run/swan-timestamp"
changelog="/usr/share/doc/swan-desktop/ChangeLog"
text="See the changelog for important changes"
if [ ! -e "$timestamp" -o "$timestamp" -ot "$changelog" ]; then
    notify-send --icon dialog-warning "Important Changes!" "$text"
    matedialog --notification --text "$text"
    matedialog.exe --width=640 --height=480 --text-info --filename=/usr/share/doc/swan-desktop/ChangeLog --title=ChangeLog
    touch $timestamp
fi

