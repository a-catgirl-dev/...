set -g theme_git_default_branches yes
# set -g theme_display_vi yes
set -g fish_prompt_pwd_dir_length 4
set -g theme_nerd_fonts yes
set -g theme_display_date no
set -g theme_display_git_untracked no
set -g theme_git_worktree_support no
# set -g theme_display_hostname yes
# set -g theme_display_user yes

if test (tty) = "/dev/tty1" -o (tty) = "/dev/tty2" -o (tty) = "/dev/tty2" -o (tty) = "/dev/tty3" -o (tty) = "/dev/tty4" -o (tty) = "/dev/tty5" -o (tty) = "/dev/tty6"
    set -g theme_powerline_fonts no
    set -g theme_nerd_fonts no
else
    set -g theme_color_scheme catppuccin-mocha
end

