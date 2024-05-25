# from the base image
FROM node:16

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copying all the files from system to container system
COPY package.json .

# install all dependecies
RUN npm install

# copy other file too
COPY ./ .

# Expose the port 
EXPOSE 3030

# command to run the app
CMD ["npm", "start"]