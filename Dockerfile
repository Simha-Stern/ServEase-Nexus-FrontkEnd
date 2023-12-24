FROM node:21-alpine3.17 as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -D typescript
ENV SERVER=8200
COPY . .
RUN npm run build
FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]