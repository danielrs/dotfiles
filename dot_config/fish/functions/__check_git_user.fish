# see: https://github.com/fish-shell/fish-shell/issues/583#issuecomment-13758325

function __check_git_user --on-variable PWD --description 'Checks for a custom git user configuration on directory change'

    # do not execute if running in command substitution
    status --is-command-substitution; and return

    # searches for the closes file '.gitconfig_include' file
    set currdir "$PWD"
    while true
        if not __check_git_user__is_subdirectory "$HOME" "$currdir"
            break
        end

        if test -e "$currdir/.gitconfig_include"
            __check_git_user__set "$currdir"
        end

        set currdir (__check_git_user__parent $currdir)
    end

    # TODO: Set environment variables
    # TODO: ...
end


function __check_git_user__is_active
    if not set -q __CHECK_GIT_USER_DIR
        return 1
    end
    return 0
end


function __check_git_user__set
    set p $argv[1]
    set -gx __CHECK_GIT_USER_DIR "$p"
    set -gx __CHECK_GIT_USER_FILE "$p/.gitconfig_include"
end


function __check_git_user__reset
    set -e __CHECK_GIT_USER_DIR
    set -e __CHECK_GIT_USER_FILE
end


function __check_git_user__parent
    set p $argv[1]
    realpath (dirname $p)
end


function __check_git_user__is_subdirectory
    set pardir (realpath $argv[1])
    set subdir (realpath $argv[2])
    if not string match -rq "^$pardir" "$subdir"
        return 1
    end
    return 0
end

