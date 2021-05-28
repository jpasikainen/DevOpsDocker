FROM alpine:latest as cloner
RUN apk --no-cache add git && \
    git clone https://github.com/dylanaraps/pfetch.git && \
    apk del git && \
    adduser -D pfetcher
USER pfetcher

FROM bash:latest
COPY --from=cloner /pfetch/pfetch .
CMD /pfetch

