# The version of Node to use
FROM node:13.12.0-alpine

# The path to application within the container. Making web directory as the work directory
WORKDIR /web

# Copies package.json to the Docker environment.
COPY ./package.json /web/package.json

# Installs all node packages
RUN yarn add

# Installs react-scripts (can skip if in package.json)
RUN yarn add react-scripts

# Copies the code to the web directory in the Docker container
COPY . /web/

# Port to be exposed
EXPOSE 3000

CMD ["yarn", "start"]