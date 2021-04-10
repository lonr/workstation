# https://github.com/Aloxaf/dotfiles/blob/master/zsh/.zshenv
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_DIRS=/etc/xdg

ZDOTDIR=$XDG_CONFIG_HOME/zsh

typeset -U PATH path
path=("${XDG_DATA_HOME}/npm/bin" "$path[@]")
export PATH
