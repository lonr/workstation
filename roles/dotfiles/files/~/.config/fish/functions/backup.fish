function backup
  # https://wiki.archlinux.org/index.php/Rsync
  # fish 3.2
  # echo --exclude-from (status dirname)/rsyncignore
  rsync -avh --delete \
    --exclude-from (dirname (status -f))/rsyncignore \
    ~/Projects \
    /run/media/lonr/backup/backup
end
