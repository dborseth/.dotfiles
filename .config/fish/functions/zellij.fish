function zellij
    if count $argv > /dev/null
        command zellij $argv
    else 
        command zellij attach -c $hostname
    end
end
