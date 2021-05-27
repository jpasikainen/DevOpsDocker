FROM ubuntu:18.04
RUN apt-get update && apt-get install -y docker.io
RUN dockerd &
WORKDIR /usr/app/src
COPY image/ .
RUN chmod +x ./script.sh
CMD ["./script.sh"]
