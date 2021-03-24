#!/usr/bin/fish
# prompt
set -U fish_color_user                61AFEF
set -U fish_color_host                61AFEF
set -U fish_color_cwd                 C678DD
set -U fish_color_cwd_root            BE5046
# other
set -U fish_color_autosuggestion      5C6370
set -U fish_color_cancel              -r
set -U fish_color_command             61AFEF
set -U fish_color_comment             5C6370
set -U fish_color_end                 98C379
set -U fish_color_error               E06C75
set -U fish_color_escape              56B6C2
set -U fish_color_history_current     --bold
set -U fish_color_match               --background=61AFEF
set -U fish_color_normal              normal
set -U fish_color_operator            C678DD
set -U fish_color_param               C678DD
set -U fish_color_quote               D19A66
set -U fish_color_redirection         E5C07B
set -U fish_color_search_match        'E5C07B' '--background=5C6370'
set -U fish_color_selection           'ABB2BF' '--bold' '--background=5C6370'
set -U fish_color_status              BE5046
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   D19A66
set -U fish_pager_color_prefix        'ABB2BF' '--bold' '--underline'
set -U fish_pager_color_progress      'CFD7E6' '--background=23878C'

# git prompt
# https://fishshell.com/docs/current/cmds/fish_git_prompt.html
# 2 `_`s
set -U __fish_git_prompt_color C678DD

function print_fish_colors --description 'Shows the various fish colors being used'
    set -l clr_list (set -n | grep fish | grep color | grep -v __)
    if test -n "$clr_list"
        set -l bclr (set_color normal)
        set -l bold (set_color --bold)
        printf "\n| %-38s | %-38s |\n" Variable Definition
        echo '|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|'
        for var in $clr_list
            set -l def $$var
            set -l clr (set_color $def ^/dev/null)
            or begin
                printf "| %-38s | %s%-38s$bclr |\n" "$var" (set_color --bold white --background=red) "$def"
                continue
            end
            printf "| $clr%-38s$bclr | $bold%-38s$bclr |\n" "$var" "$def"
        end
        echo '|________________________________________|________________________________________|'\n
    end
end

print_fish_colors
