export EDITOR="nvim"
export VISUAL="nvim"
export PATH="$HOME/.local/kitty.app/bin:$PATH"

# alias z='zoxide'
alias brs='source ~/.profile'
alias v='nvim'
alias c='clear'
alias e='exit'
alias pa='source venv/bin/activate'
alias py='python main.py'
alias gc='xclip -sel clip < ~/gotkey'
alias npms='cd ~/passwords/cameronwilcox/;npm run dev'
alias npmss='google-chrome --app=http://localhost:5173/  --name="testing" --class=testing & cd ~/passwords/cameronwilcox/; npm run dev'

vol() { 
    pactl set-sink-volume @DEFAULT_SINK@ "$1%" 
}
rerun() { case "$1" in
    "ai")           firefox --no-remote -P chatgpt         --class chatgpt    https://chat.openai.com   & disown ;;
    "monkeytype")   firefox --no-remote -P monkeytype      --class monkeytype https://monkeytype.com    & disown ;;
    "yt"|"youbube") firefox --no-remote -P music           --class music      https://music.youtube.com & disown ;;
 esac }


eval "$(zoxide init bash)"

xinput set-prop "Glorious Model O Wireless" "libinput Accel Speed" -0.37
