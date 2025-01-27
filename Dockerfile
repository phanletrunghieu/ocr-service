FROM node:15.9.0-alpine3.13
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn && yarn cache clean
COPY . .
ENV PORT=3000
EXPOSE ${PORT}
CMD ["yarn", "start"]