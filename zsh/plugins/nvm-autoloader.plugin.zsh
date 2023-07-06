load-nvmrc() {
  local node_version="$(nvm version)"

  if [[ -e ".nvmrc" ]]; then
    local nvmrc_node_version=$(nvm version "$(cat .nvmrc)")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use --silent
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    nvm use --silent default
  fi
}

add-zsh-hook chpwd load-nvmrc
