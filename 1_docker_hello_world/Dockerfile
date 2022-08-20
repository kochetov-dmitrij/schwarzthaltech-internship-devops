FROM golang:alpine AS build

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o /hello_world

FROM scratch

COPY --from=build /etc/passwd /etc/passwd
COPY --from=build /hello_world /hello_world

USER nobody

ENTRYPOINT ["/hello_world"]
