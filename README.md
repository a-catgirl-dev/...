# ...

My dotfiles for Artix OpenRC/Wayland/SwayFX/SwayNC/Waybar/Foot/Fish/Fisher/NeoVim/Yazi/GNU/Linux.

Wallpaper attribution: [https://nitter.net/im\_a\_spacebar/status/1358988643134697472](https://nitter.net/im_a_spacebar/status/1358988643134697472)

Note that you should probably read this entire document just to be safe. Especially the
[Autologin/Why does hyprlock start when i log in](#Autologin/Why does hyprlock start when i log in) section.

## How to

<details>
<summary>Quick start</summary>

If you have a clean install or have an empty `.config`.

```sh
paru -S stow curl swaync fish foot neovim yazi swayfx swaybg waybar autotiling-rs grim slurp jq --needed && sudo chsh $(whoami) -s /bin/fish && git clone https://github.com/a-catgirl-dev/....git --filter=blob:none && cd ... && stow . && curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher && fisher install oh-my-fish/theme-bobthefish && fisher install franciscolourenco/done
```

> [!NOTE]
> If you use Artix, you need the regular Arch `extra` repository to be enabled to install certain dependencies in this list.

> [!NOTE]
> If you use Artix, you need to change the build-time dbus implementation for swayfx to libelogind
> see [this](https://gist.github.com/a-catgirl-dev/a03adfdd5f5194d712f842b219f3e700) for instructions 

also i know github markdown is broken here, github skill issue

</details>

i mean its pretty easy to apply. you need to first...

## Install GNU stow and curl

```sh
pacman -S stow curl --needed
```

## then find out the other deps it has.

```sh
paru -S swaync fish foot neovim yazi swayfx swaybg waybar autotiling-rs grim slurp jq --needed
```

> [!NOTE]
> If you use Artix, you need the regular Arch `extra` repository to be enabled to install certain dependencies in this list.

> [!NOTE]
> If you use Artix, you need to change the build-time dbus implementation for swayfx to libelogind
> see [this](https://gist.github.com/a-catgirl-dev/a03adfdd5f5194d712f842b219f3e700) for instructions 

> [!NOTE]
> You read that right, `paru`. Some packages are on the aur. Read their respective `PKGBUILD`s carefully

### or if you like yay...

```sh
rm -rf ~
```

### or if you like [nyaur](https://github.com/a-catgirl-dev/nyaur)...

```sh
echo "there is something wrong with me"
```

### or if you like pacman

```sh
# TODO: download aur pkgs from pacman somehow.
```

## Then, change shell to fish shell, the best shell that will ever exist.

```sh
sudo chsh $(whoami) -s /bin/fish
```

## Then, clone this repo...

```sh
git clone https://github.com/a-catgirl-dev/....git --filter=blob:none
```

## Then, switch view into it

```sh
cd ...
```

## symlink em' all

```sh
stow .
```

> [!NOTE]
> This command may fail if you already have some of your own dots in `.config`. If that is the case, move the conflicting files out of the `.config` directory and try again.
> stow **cannot** overwrite existing files as far as im aware, so you need not worry.

<!-- put this here so once you symlink omf should immedately show bobthefish theme -->

## et enfin, install [fisher](https://github.com/jorgebucaran/fisher) and themes and plugins

```sh
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher && fisher install oh-my-fish/theme-bobthefish && fisher install franciscolourenco/done
```

fisher is used over omf because omf is deprecated and unmaintained.

## haha jk not finally. you need to then find the fira code nerd font

idk where to find it. perhaps [google](https://google.com) it yourself. (or [duckduckgo](https://duckduckgo.com) it yourself)

## Further configuration, troubleshooting, etc etc etc

Make it yours, not mine.

### Yazi: add what-size plugin for yazi

Trigger it with `.s`. You can configure it in `.config/yazi/keymap.toml`

```sh
ya pack -a 'pirafrank/what-size'
```

### Autologin/Why does hyprlock start when i log in

My personal `agetty.tty1` configuration automagically logs me in and shows the same login screen as my lock screen, which
is already better than KDE plasma's SDDM and whatever lock screen they use for the actual desktop (they're inconsistent).

You can avoid this by opening up `~/.config/sway/config` and remove the `exec ~/.config/sway/lock.sh`. It is probably
at the top.

As for **autologin**, you can open up `/etc/conf.d/agetty.tty1` and set `agetty_options="--autologin YOURUSERACCOUNTHERE"`,
which will automatically log you in. If you set your shell to fish like i told you to, the
`~/.config/fish/conf.d/sway_tty_autostart.fish` script will automatically launch sway, and sway will launch hyprlock.

If you want to change which tty this is spawned in, make sure to edit the `sway_tty_autostart.fish` script to reflect
the right tty: `if [ (tty) = "/dev/tty7" ]`. You can probably figure out what to do for the agetty conf.d option.

If you don't use agetty, well, read the damn manpage and figure it out on your own. This isn't daycare.

### delete my system

```sh
sudo rm -rf /*
```

### wtf where the hell is your app launcher

im using my own [fork](https://github.com/a-catgirl-dev/ignition) of [ignition](https://github.com/alphaqu/ignition)

(mostly because it looks nice, lmao)

