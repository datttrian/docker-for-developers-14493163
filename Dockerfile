FROM node:16
# ENV NODE_ENV=production
WORKDIR /client
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN yarn install
COPY . /client/
EXPOSE 3000
# RUN chown -R node /usr/src/app
# USER node
CMD ["yarn", "start"]
