FROM ubuntu:latest
EXPOSE 5000
COPY /example-frontend /usr/src/frontend
WORKDIR /usr/src/frontend


RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
RUN npm install
RUN REACT_APP_BACKEND_URL=http://172.17.0.2:8080 npm run build
RUN npm install -g serve
CMD ["serve", "-s", "-l", "5000", "build"]
