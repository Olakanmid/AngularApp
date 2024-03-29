FROM node:16
RUN mkdir -p /usr/src/app
COPY package.json /usr/src app
RUN npm cache clean
RUN npm install
COPY . /usr/src/app
EXPOSE 4200
CMD ["npm", "start"]

