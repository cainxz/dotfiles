# ✍️ Caim's Dotfiles

> Um jeito fácil de ter meu terminal favorito em qualquer computador.

Este repositório é a minha solução pessoal para um problema comum: eu nunca lembrava de todos os detalhes da minha configuração e perdia muito tempo pesquisando para fazer tudo novamente. Com este projeto, eu posso recriar meu ambiente de desenvolvimento em minutos.

![Meu Terminal](URL_DA_SUA_IMAGEM_AQUI)
*Este setup foi projetado e testado para **Ubuntu**, rodando no **Windows Subsystem for Linux (WSL)**.*

---

## ⚡ Guia de Início Rápido

Estes são os comandos essenciais para configurar uma nova máquina do zero.

<details>
<summary><strong>Clique para expandir os passos</strong></summary>

### Passo 1: Clone o Repositório
```bash
git clone [https://github.com/cainxz/dotfiles.git](https://github.com/cainxz/dotfiles.git) ~/dotfiles
```

###lembrete para o git

```git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"
```

## 🛠️ Ferramentas Gerenciadas

Atualmente, este projeto gerencia as configurações para as seguintes ferramentas:

| Ferramenta      | Descrição                                         | Arquivo de Configuração |
| :-------------- | :-------------------------------------------------- | :---------------------- |
| **Zsh** | Meu shell principal, com plugins via Oh My Zsh.     | `zshrc`                 |
| **Powerlevel10k** | Tema do prompt, responsável pelo visual e ícones. | `p10k.zsh`              |
| **Git** | Configurações globais de usuário e aliases.       | `gitconfig`             |
| **Bash** | Configurações básicas para compatibilidade.         | `bashrc`                |
