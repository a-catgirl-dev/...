zoxide init fish | source

if test "$TERM" = "xterm-kitty"
    # nothing
else
    if type -q tmux; and test -z "$TMUX"
        exec tmux
    end
end

# set -gx TERM xterm-256color

