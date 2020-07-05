function fish_prompt --description "Sets the prompt"

    set user (whoami)

    # Openning bracket
    set_color blue
    echo -n "["

    # Username
    if test "$user" = 'root'
        set_color red
    else
        set_color green
    end
    echo -n (whoami)

    # At symbol
    set_color blue
    echo -n "@"

    # Hostname of the computer
    set_color normal
    echo -n (prompt_hostname)" "

    # Current directory
    echo -n (prompt_pwd)

    # Closing bracket
    set_color blue
    echo -n "] "

    # Prompt symbol
    set_color green
    if test (id -u) = 0
        set_color red
        echo -n "\$ "
    else
        set_color green
        echo -n "> "
    end

    # Back to normal colors
    set_color normal
end

