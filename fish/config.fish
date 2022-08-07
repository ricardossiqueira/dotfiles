if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    source ~/.asdf/asdf.fish
    set fish_greeting
    # set -x DISPLAY 172.17.224.1:0
    ~/.config/fish/tmux.sh
end
