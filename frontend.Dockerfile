FROM node:10.17.0-alpine
COPY ./packages/frontend /frontend
RUN chown -R node:node /frontend
USER node
WORKDIR /frontend
RUN npm i
EXPOSE 3000
CMD ["node", "src/index.js"]
