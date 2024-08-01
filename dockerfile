# use the official golang image from dockerhub

FROM golang:1.22.3-alpine

#set current working directory inside the container to /app

WORKDIR /myApp

#Copy everything from the project directory to the host machine

COPY . .

#create an executable named main

RUN go build -o main

#Define the network ports that this container will listen on at runtime

EXPOSE 8080

#define command that will run when a container is started from dockerize image

ENTRYPOINT ["./main"]