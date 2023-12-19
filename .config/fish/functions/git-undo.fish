function git-undo
    if test (command -v git); and git rev-parse --is-inside-work-tree >/dev/null 2>&1
        if test "$argv" = --soft
            git reset --soft HEAD~1
        else
            git reset HEAD~1
        end
    else
        echo -e "\e[31mError: Not a Git repository\e[0m"    
    end
end
