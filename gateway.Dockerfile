FROM node:10.17.0-alpine
COPY ./packages/gateway /gateway
RUN chown -R node:node /gateway
USER node
WORKDIR /gateway
RUN npm i
EXPOSE 3000
CMD ["node", "src/index.js"]
