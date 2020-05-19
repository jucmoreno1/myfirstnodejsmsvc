# Download the docker image with nodeJS installed
FROM node:10

#In this directory the image will be installed
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

#This command is executed when image is built in this case will install the content od the #package.json
RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8000
#Commando for running the app
CMD [ "node", "myapp.js" ]