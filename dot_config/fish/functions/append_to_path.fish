function append_to_path --description 'Appends entry to the PATH, moving it if it exists already'
    set p $argv[1]
    set -gx PATH (string match -v $p $PATH)
    set -gx PATH $PATH $p
end

