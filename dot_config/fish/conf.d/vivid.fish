# Configure LS_COLORS for apps that use it (ls, find, sd, fd, etc).
# See: https://github.com/sharkdp/vivid
if type --query vivid
  export LS_COLORS="$(vivid generate solarized-light)"
end
