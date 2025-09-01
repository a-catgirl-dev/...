alias sudo='doas'
alias v='nvim'
alias swaps="free -vmt; echo "\n"; zramctl; echo "\n"; swapon --show"
alias cd='z'
alias y='yazi'

alias synctime="sudo systemctl start systemd-timesyncd && sleep 1 && sudo systemctl stop systemd-timesyncd"

alias rec="wl-screenrec -b=14MB --audio --audio-device alsa_output.usb-1130_USB_AUDIO-00.analog-stereo.monitor --low-power=off --filename "
alias rec60="wl-screenrec -b=14MB --audio --audio-device alsa_output.usb-1130_USB_AUDIO-00.analog-stereo.monitor --low-power=off --max-fps 60 --filename "

alias fatpak="flatpak" # fuck flatpak

alias fastfetch="fastfetch --color '4;95' --logo-color-1 '3;95'"

## Useful aliases
# Replace ls with eza
alias ls='eza -al --color=always --group-directories-first --icons --git' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.="eza -a | grep -e '^\.'"                                   # show only dotfiles

# why the fuck less so cringe??? show colors
# this doesn't work half the time though
alias less='less -R'
# oh i see why: literally every utility doesnt find color support from pipes
# why???
alias xxd='xxd -R always'

# Common use
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'          # List amount of -git packages

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
alias cleanupagressive='pacman -Qqd | sudo pacman -Rnsu -'

alias dmesg="sudo /bin/dmesg -L=always"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

alias hyfetch="hyfetch --ascii-file=/home/nyan/.config/fastfetch/logo.txt"

