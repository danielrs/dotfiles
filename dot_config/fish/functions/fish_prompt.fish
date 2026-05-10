function fish_prompt --description "Sets the prompt"

    set --local user_color green
    set --local user_char ">"
    if fish_is_root_user
        set --local user_color red
        set --local user_char "\$"
    end

    # Openning bracket
    set_color blue
    echo -n "["

    # Username
    set_color $user_color
    echo -n "$USER"

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
    set_color $user_color
    echo -n $user_char" "

    # Back to normal colors
    set_color normal
end
