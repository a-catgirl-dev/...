if [ (tty) = "/dev/tty1" ]
    echo -e "\x1b[38;2;95mstarting sway!\x1b[0m"
    export SDL_VIDEODRIVER wayland
    export QT_QPA_PLATFORM wayland
    export XDG_CURRENT_DESKTOP sway
    export XDG_SESSION_DESKTOP sway
    export WLR_NO_HARDWARE_CURSORS 1
    export WLR_NO_SCANOUT 1

    # pipewire &
    # pipewire-pulse &
    # wireplumber &

    exec dbus-run-session sway
    # exec dbus-run-session niri > output.log ^&1
end

