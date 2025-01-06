# Use a imagem base do Node.js
FROM node:22.11.0

# Crie o diretório da aplicação
WORKDIR /app

# Copie os arquivos de configuração e dependências
COPY package.json package-lock.json ./

# Instale as dependências
RUN npm ci

# Copie o restante dos arquivos da aplicação
COPY . .

# Exponha a porta que a aplicação vai usar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "app.js"]
