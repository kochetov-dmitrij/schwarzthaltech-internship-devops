FROM golang:alpine AS build

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o /hello_world

FROM scratch

COPY --from=build /hello_world /hello_world

ENTRYPOINT ["/hello_world"]
