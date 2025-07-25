# Development
FROM node:16-alpine

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .

CMD ["yarn", "start"]

# Production would use multi-stage build with nginx