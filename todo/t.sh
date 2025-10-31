#!/bin/bash

# Função que será chamada quando SIGINT for recebido
function handle_sigint {
    echo
    echo "Você pressionou Ctrl+C! Mas eu não vou sair 😎"
}

# Configura o trap para SIGINT
trap handle_sigint SIGINTgno

echo "Script rodando. Pressione Ctrl+C para testar o trap."

# Loop infinito para manter o script rodando
while true; do
    sleep 1
done
