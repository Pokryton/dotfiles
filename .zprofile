[ -f "$HOME/.profile" ] && source "$HOME/.profile"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
