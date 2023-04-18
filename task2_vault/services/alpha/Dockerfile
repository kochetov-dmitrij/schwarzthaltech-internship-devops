# no need to modify this file

FROM golang:1.19.6-alpine3.17
WORKDIR /app
COPY . .
RUN go mod download
RUN go get github.com/form3tech-oss/platform-interview/services/accounts
RUN go build -o /alpha
ENTRYPOINT ["/alpha"]
