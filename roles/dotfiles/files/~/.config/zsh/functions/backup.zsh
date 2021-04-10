# https://wiki.archlinux.org/index.php/Rsync
# https://stackoverflow.com/questions/9901210/bash-source0-equivalent-in-zsh/23259585#23259585
function backup() {
  # rsync --dry-run -avh --delete \
  rsync -avh --delete \
    --exclude-from $(dirname ${(%):-%x})/rsyncignore \
    ~/Projects \
    /run/media/lonr/backup/backup
}
