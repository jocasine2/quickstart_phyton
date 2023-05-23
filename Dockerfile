FROM python:latest

WORKDIR /app

# Instalando as dependências do sistema
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    nodejs \
    npm

# Atualizando o Node.js e instalando o Yarn
# RUN npm install -g n && n stable
# RUN npm install -g yarn

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando os arquivos do projeto
COPY . /app

# Instalando as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# CMD exec docker-compose/start.sh
