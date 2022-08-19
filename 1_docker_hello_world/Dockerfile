FROM golang:alpine AS build

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -ldflags "-w" -o /hello_world

FROM alpine

COPY --from=build /hello_world /hello_world

ENTRYPOINT ["/hello_world"]
