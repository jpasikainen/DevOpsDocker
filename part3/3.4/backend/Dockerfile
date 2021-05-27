FROM golang:1.16-alpine
EXPOSE 8080
COPY /example-backend /usr/src/backend
WORKDIR /usr/src/backend

ENV REQUEST_ORIGIN=http://localhost
RUN go build && \
    adduser --disabled-password --gecos '' appuser && \
    chown -R appuser .

USER appuser
CMD ["./server"]
