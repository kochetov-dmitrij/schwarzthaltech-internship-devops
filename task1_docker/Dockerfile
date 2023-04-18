# Build Stage
FROM golang:1.19 AS build
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o .hello_world && strip /hello_world

# Production Stage
FROM scratch
COPY --from=build /hello_world /hello_world
ENTRYPOINT ["/hello_world"]


#FROM golang:1.19
#WORKDIR /app
#COPY . .
#RUN go mod download
#RUN go build -o /hello_world
#ENTRYPOINT ["/hello_world"]
