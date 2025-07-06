# Use a imagem oficial do Python como base
FROM python:3.13.5-alpine3.22

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos necessários para o diretório de trabalho
COPY requirements.txt .
# Instale as dependências
RUN pip install -r requirements.txt

# Copie o resto dos arquivos para o diretório de trabalho
COPY . .

# Exponha a porta 8000 para o container
EXPOSE 8000

# Defina o comando para executar a aplicação
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]