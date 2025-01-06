# Define a imagem base como node:22.11.0
FROM node:22.11.0

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instala as dependências do projeto
RUN npm ci

# Copia todo o código da aplicação para o contêiner
COPY . .

# Expõe a porta 3000 do contêiner
EXPOSE 3000

# Define o comando para iniciar a aplicação
CMD ["node", "app.js"]
