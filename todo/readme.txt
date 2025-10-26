#primeiro atualize o sistema
sudo apt update

#segundo faça o upgrade por precauçao.
sudo apt upgrade

#instale o banco que deseja, no meu caso postgresql
apt install postgresql

#depois acesse o postgresql e entra no console interativo do postgres e crie #um user e senha.
sudo -i -u postgres
psql

#apos acessar digite cada comando alterando para o user e senha que queira.
CREATE USER seu_usuario WITH PASSWORD 'sua_senha_secreta';

#Cria o banco de dados e o associa ao novo usuário como dono
CREATE DATABASE todo_db OWNER seu_usuario;

#Concede todas as permissões no novo banco de dados
GRANT ALL PRIVILEGES ON DATABASE todo_db TO seu_usuario;

#Sai do console psql
\q

#Sai do usuário 'postgres' do sistema e volta para o seu terminal ubuntu
exit

#crie um arquivo Gemfile na pasta do projeto  e este arquivo adicione nele o #comando abaixo
echo "# Gemfile
source 'https://rubygems.org'
gem 'pg'" > Gemfile

#instale a  gem 
gem install bundler

#sera criado um arquivo Gemfile.lock na pasta do projeto

#Instale as bibliotecas de desenvolvimento (libpq-dev)
sudo apt install libpq-dev

#instale o bundle
bundle install
