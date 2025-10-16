FROM node:24-alpine
LABEL maintainer="Sven Walther <sven@walther.world>"

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Add files
COPY db.json /usr/src/app
COPY routes.json /usr/src/app

# Install app dependencies
RUN npm install -g json-server@0.17.4

EXPOSE 3000
RUN adduser -D placeholder
USER placeholder
CMD [ "node", "/usr/local/bin/json-server", "db.json", "--routes", "routes.json", "--host", "0.0.0.0"]