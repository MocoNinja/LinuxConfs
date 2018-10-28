# .zprofile
# sourced by zsh when used as a login shell

# Uncomment the below example for multiple sessions
#
# using Ctrl-Alt-F2 will switch you to tty2, and i3 will be started
# using Ctrl-Alt-F1 will switch back to tty1 and openbox
#
# if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#     exec startx ~/.xinitrc openbox
# elif [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]]; then
#     exec startx ~/.xinitrc i3
# fi


# automatically run startx when logging in on tty1
# comment this out if using the above example

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx -- vt1 &>/dev/null
