#!/bin/bash
set -e

# --- Variáveis de Cor ---
# Usamos códigos de escape ANSI para definir cores. \e[32m é verde, \e[34m é azul, etc.
# Isso torna a saída do script muito mais fácil de ler.
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color (para resetar a cor)

# --- Variáveis Principais ---
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILES_TO_SYMLINK=(
  'zshrc'
  'gitconfig'
  'p10k.zsh'
  'profile'
  'bashrc'
  'bash_logout'
)

# --- Funções ---
# Criamos pequenas "funções" para reutilizar código.
# Isso deixa o loop principal mais limpo.
info() {
    printf "${BLUE}%s${NC}\n" "$1"
}

success() {
    printf "${GREEN}%s${NC}\n" "$1"
}

warn() {
    printf "${YELLOW}%s${NC}\n" "$1"
}

# --- Lógica Principal ---
info "Iniciando configuração dos dotfiles..."

for file in "${FILES_TO_SYMLINK[@]}"; do
    source_file="$DIR/$file"
    destination_file="$HOME/.$file"

    if [ -e "$destination_file" ]; then
        # MELHORIA: Adicionamos a data ao backup para nunca sobrescrever um backup antigo.
        backup_file="$destination_file.bak.$(date +%F-%T)"
        warn "Arquivo existente encontrado. Fazendo backup de $destination_file para $backup_file"
        mv "$destination_file" "$backup_file"
    fi

    info "Criando link para $file em $destination_file"
    ln -s "$source_file" "$destination_file"
done

success "🎉 Configuração concluída com sucesso!"
