# desktop icon
mkshortcut.exe -d 'Swan Desktop' -i /Swan.ico -n 'Swan Xfce4 Desktop' -a '--quote /usr/bin/bash.exe -l -c "cd; exec /usr/bin/startx /etc/X11/xinit/Xsession xfce"' -D /bin/run
# start menu icon
mkdir -p "$(cygpath -P)/Swan"
mkshortcut.exe -d 'Swan Desktop' -i /Swan.ico -n 'Swan/Swan Xfce4 Desktop' -a '--quote /usr/bin/bash.exe -l -c "cd; exec /usr/bin/startx /etc/X11/xinit/Xsession xfce"' -P /bin/run
# remove previous versions' unintallable link
rm -f "$(cygpath -P)/Swan Xfce4 Desktop.lnk"
rm -rf "$(cygpath -P)/Cygwin-X"
