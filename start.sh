#!/bin/bash
#adicionando funções ao bash
source submodules/ruby-on-rails/functions.sh

#adicionando usuário ao grupo docker
user_docker

#iniciando banco de dados
sudo docker-compose up -d --build

#atualizando permissões
permissions_update
