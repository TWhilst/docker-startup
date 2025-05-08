# This is used to pull an image from DockerHub and give it a name
FROM node:10.13.0 as build

# This get all the files in the directory and paste it in a folder called build
COPY . /app
