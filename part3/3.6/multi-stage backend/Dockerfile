FROM golang:alpine as build
WORKDIR /go/src/app
COPY /example-backend .

ENV REQUEST_ORIGIN=http://localhost
RUN CGO_ENABLED=0 go install -ldflags '-extldflags "-static"' -tags timetzdata && \
    adduser --disabled-password --gecos '' appuser && \
    chown -R appuser /go/src/app
USER appuser

FROM scratch
COPY --from=build /go/bin/server /server
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

EXPOSE 8080
ENTRYPOINT ["/server"]
