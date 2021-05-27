FROM node:lts-alpine3.13
EXPOSE 5000
COPY /example-frontend /usr/src/frontend
WORKDIR /usr/src/frontend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser --disabled-password --gecos '' appuser && \
    chown -R appuser .

USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]
