FROM node:6.17.1-alpine
WORKDIR /app
COPY . .
RUN npm config set registry https://registry.npmmirror.com && \
    npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start"]


# docker build -t firfe/weiqi-platform:2025.05.13 .

