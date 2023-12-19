function dotfiles
    set git_cmd "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
    
    if test (count $argv) -eq 0
        eval $git_cmd status
    else
        eval $git_cmd $argv
    end
end
