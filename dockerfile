# use the official golang image from dockerhub

FROM golang:1.22.3-alpine AS builder

#Set metadata

LABEL name="ascii-art-dockerize"\
      enviroment="development" \
      maintainer="eaub@proton.me"\
      description="This image runs a golang web server that serves ascii-art representation from a specified text and banner"\
      port="80"\
      version="1.0"\
      build_date="02-08-2024"\
      vcs-url="https://learn.zone01oujda.ma/git/aelhadda/ascii-art-dockerize"\
      usage="docker build -t ascii-art-dockerize . \ docker run -d -p 8080:8080 ascii-art-dockerize"


#set current working directory inside the container to /executable

WORKDIR /executable

# Copy everything from the project directory to the image

COPY . .

#create an executable named main

RUN go build -o main

# Use a smaller image for the final stage

FROM alpine:latest

#set current working directory inside the container to /asciiArtDockerize

WORKDIR /project
# Copy the executable from the builder stage to the new image

RUN mkdir ascii-art
RUN mkdir ascii-art/banners
RUN mkdir templates

COPY --from=builder /executable/main  .
COPY --from=builder  /executable/ascii-art/banners/  ./ascii-art/banners
COPY --from=builder /executable/templates/ ./templates



#Define the network ports that this container will listen on at runtime

EXPOSE 8080

#define command that will run when a container is started from docker image

ENTRYPOINT ["./main"]