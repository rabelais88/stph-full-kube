FROM node:alpine
RUN mkdir -p /home/node/myapp-client
WORKDIR /home/node/myapp-client
COPY ./package.json .
RUN yarn install
COPY . .
# only used for testing
EXPOSE 3000:3000
CMD yarn start