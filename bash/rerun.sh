rerun() {
    case "$1" in
    "")
        # firefox --no-remote -P chatgpt --class chatgpt https://chat.openai.com &
        # firefox --no-remote -P github --class github https://github.com/undonecoffee?tab=repositories &
        firefox --no-remote -P monkeytype --class monkeytype https://monkeytype.com &
        firefox --no-remote -P music --class music https://music.youtube.com &
        # firefox --no-remote -P school --class music https://desmos.com/calculator &
        disown
        ;;
    "firefox" | "browser" | "default")
        firefox --no-remote -P default-release --class firefox &
        disown
        ;;
    "ai")
        firefox --no-remote -P chatgpt --class chatgpt https://chat.openai.com &
        disown
        ;;
    "sxhkd")
        pkill sxhkd
        sxhkd &
        disown
        ;;
    "git")
        firefox --no-remote -P github --class github https://github.com/undonecoffee?tab=repositories &
        disown
        ;;
    "test")
        firefox --no-remote -P testing --class testing http://localhost:5173 &
        disown
        ;;
    "monkeytype" | "type" | "monkey" | "t")
        firefox --no-remote -P monkeytype --class monkeytype https://monkeytype.com &
        disown
        ;;
    "yt" | "music")
        firefox --no-remote -P music --class music https://music.youtube.com &
        disown
        ;;
    "school")
        firefox --no-remote -P school --class music https://dictionary.com &
        disown
        ;;
    esac
}
