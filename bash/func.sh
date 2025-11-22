case "$1" in
"sxhkdrs")
    pkill sxhkd
    sxhkd &
    disown
    ;;
esac
