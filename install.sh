#!/bin/bash
set -e


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

FILES_TO_SYMLINK=(
  'zshrc'
  'gitconfig'
  'p10k.zsh'    # Adicionado
  'profile'     # Adicionado
  'bashrc'      # Adicionado
  'bash_logout' # Adicionado
)

echo "Iniciando configuração dos dotfiles..."

for file in "${FILES_TO_SYMLINK[@]}"; do
  source_file="$DIR/$file"
  destination_file="$HOME/.$file"

  if [ -e "$destination_file" ]; then
    echo "Fazendo backup de $destination_file para $destination_file.bak"
    mv "$destination_file" "$destination_file.bak"
  fi

  echo "Criando link para $file em $destination_file"
  ln -s "$source_file" "$destination_file"
done

echo "Configuração concluída!"
