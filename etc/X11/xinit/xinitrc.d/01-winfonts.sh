#!/bin/bash

winfonts="$(cygpath "${SYSTEMROOT}/Fonts")"
if [ -e "$winfonts" ]; then
    mount -fo user $(cygpath -w $winfonts) /usr/share/fonts/windows
    fc-cache -s
fi
unset winfonts
