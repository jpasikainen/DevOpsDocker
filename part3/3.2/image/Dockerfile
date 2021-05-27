FROM ubuntu:18.04
RUN apt-get update && apt-get install bc -y 
WORKDIR /usr/app/src
COPY bonsai/bonsai.sh .
RUN chmod +x bonsai.sh
CMD ["./bonsai.sh", "-l"]
