if test (uname -s) = "Linux"; and test -e /home/linuxbrew/.linuxbrew/bin/brew
  /home/linuxbrew/.linuxbrew/bin/brew shellenv fish | source
end
