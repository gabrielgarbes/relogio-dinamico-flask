# Use uma imagem base do Python
FROM python:3.10-slim

# Configurar diretório de trabalho
WORKDIR /app

# Copiar os arquivos para o container
COPY requirements.txt requirements.txt
COPY . .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta usada pela aplicação
EXPOSE 5000

# Comando para iniciar o servidor
CMD ["python", "app.py"]
