# This is used to pull an image from DockerHub and give it a name
FROM node:10.13.0 as build

# This get all the files in the directory and paste it in a folder called build
COPY . /app

# This is the directory where all the commands are run
WORKDIR /app

# RUN command is used to execute commands ontop of the current image
# npm install downloads all the node_modules for the application
RUN npm install

# This is used to build the application
RUN npm run build

# Pulled out nginx:1.17.10-alpine, it is good practice to add the version
FROM nginx:1.17.10-alpine

# This is the particular port where the docker container will be listening on
EXPOSE 4200

# THis basically copies the result of the node container and paste it in the nginx html folder
COPY --from=build /app/dist/angularCalc /usr/share/nginx/html

