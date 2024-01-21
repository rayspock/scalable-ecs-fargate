FROM node:21-alpine
COPY ./packages/gateway /gateway
RUN chown -R node:node /gateway
USER node
WORKDIR /gateway
RUN yarn
EXPOSE 3000
CMD ["node", "src/index.js"]
