function ksh --description 'Alias for kitty +kitten ssh, defaults to ssh if not running Kitty'
    if [ "$TERM" = "xterm-kitty" ]
        kitty +kitten ssh $argv
    else
        command ssh $argv
    end
end

