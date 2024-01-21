FROM node:21-alpine
COPY ./packages/backend /backend
RUN chown -R node:node /backend
USER node
WORKDIR /backend
RUN yarn
EXPOSE 3000
CMD ["node", "src/index.js"]
