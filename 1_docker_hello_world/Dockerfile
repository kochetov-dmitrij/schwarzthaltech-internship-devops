#FROM golang:1.18.0-alpine3.15
#WORKDIR /app
#COPY . .
#RUN go mod download
#RUN go build -o /hello_world
#ENTRYPOINT ["/hello_world"]

FROM golang:1.18.0-alpine3.15 as build
WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o /hello_world

FROM alpine:latest as prod
COPY --from=build /hello_world .
ENTRYPOINT ["/hello_world"]

