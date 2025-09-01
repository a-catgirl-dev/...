#!/bin/fish

export SDL_VIDEODRIVER wayland
export QT_QPA_PLATFORM wayland
export XDG_CURRENT_DESKTOP sway
export XDG_SESSION_DESKTOP sway
export XDG_RUNTIME_DIR "/run/user/1000"
export WLR_NO_HARDWARE_CURSORS 1
export WLR_NO_SCANOUT 1
exec dbus-run-session sway

