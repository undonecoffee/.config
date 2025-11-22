format_pwd() {
    local home="/home/cameron"
    local path="$PWD"

    if [[ "$path" == "$home" ]]; then
        echo ""
    elif [[ "$path" == "$home/"* ]]; then
        echo "${path#$home/}" | sed 's/\// /g'
    else
        echo "$path"
    fi
}

PS1='\[\e[90m\]$(format_pwd) \[\e[96m\]❯\[\e[0m\] '
