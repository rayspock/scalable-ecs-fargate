FROM node:21-alpine
COPY ./packages/frontend /frontend
RUN chown -R node:node /frontend
USER node
WORKDIR /frontend
RUN yarn
EXPOSE 3000
CMD ["node", "src/index.js"]
