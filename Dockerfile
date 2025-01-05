# Usa a imagem oficial do Node.js como base
FROM node:18-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instala as dependências do projeto
RUN npm ci

# Copia o restante dos arquivos do projeto para o contêiner
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
