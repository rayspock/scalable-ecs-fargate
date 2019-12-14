FROM node:10.17.0-alpine
COPY ./packages/backend /backend
RUN chown -R node:node /backend
USER node
WORKDIR /backend
RUN npm i
EXPOSE 3000
CMD ["node", "src/index.js"]
