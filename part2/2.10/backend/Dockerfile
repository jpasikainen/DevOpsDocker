FROM golang:1.16-alpine
EXPOSE 8080
COPY /example-backend /usr/src/backend
WORKDIR /usr/src/backend

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
ENV REQUEST_ORIGIN=http://localhost
RUN go build
CMD ["./server"]
