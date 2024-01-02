function source_env
    set -f envfile "$argv"

    if not test -f "$envfile"
        echo "Unable to load $envfile"
        return 1
    end

    while read line
        if not string match -qr '^#|^$' "$line"
            set var (string split -m 1 '=' $line)
            set var[2] (eval echo $var[2])
            set -gx $var[1] $var[2]
        end
    end < "$envfile"
end
