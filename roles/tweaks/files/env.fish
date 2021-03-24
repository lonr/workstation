#!/usr/bin/fish
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_CONFIG_DIRS /etc/xdg

# path
set -U fish_user_paths $HOME/.local/bin
