FROM node:slim
WORKDIR /app
COPY . .
RUN npm install --frozen-package-lock.json
# CMD ["npm", "run", "dev"]
