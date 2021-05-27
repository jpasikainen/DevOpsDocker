FROM ubuntu:latest
EXPOSE 5000
COPY /example-frontend /usr/src/frontend
WORKDIR /usr/src/frontend

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt install -y nodejs
RUN npm install
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN npm run build
RUN npm install -g serve
RUN adduser --disabled-password --gecos '' appuser
RUN chown -R appuser .

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
