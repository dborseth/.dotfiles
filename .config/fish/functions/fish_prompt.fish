set -g symbol "❯"

set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_showupstread auto

set -g __fish_git_prompt_color_branch white
set -g __fish_git_prompt_color_bare white
set -g __fish_git_prompt_color_stagedstate brgreen
set -g __fish_git_prompt_color_dirtystate brmagenta

function __is_ssh
    set -q SSH_CLIENT || set -q SSH_CONNECTION || set -q SSH_TTY
end

function fish_prompt
    echo ''

    if __is_ssh
        set_color bryellow
        echo -sn "$USER@$(prompt_hostname) "
    end 

    set_color brblue
    echo -sn "$(prompt_pwd)" 
    set_color normal
    echo -sn "$(fish_git_prompt)"

    echo ''

    set_color magenta
    echo -n "$symbol "
    set_color normal
end

function fish_right_prompt
end

function fish_mode_prompt
end
