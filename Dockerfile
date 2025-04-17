FROM python:3.11

EXPOSE 8000
WORKDIR /app

# Instalando as dependências do sistema
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    nodejs \
    npm

# Copiando os arquivos do projeto
COPY requirements.txt /app/
COPY ./app /app

# Instalando as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
