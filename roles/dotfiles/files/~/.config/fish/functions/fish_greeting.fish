function fish_greeting
    set -l now (date "+%Y-%m-%d")
    if test "$LAST_GREETING" = "$now"
        return
    end
    node (dirname (status -f))/greeting.js
    # fish 3.2
    # node (status dirname)/greeting.js
    set -U LAST_GREETING $now
end
