FROM node:lts-alpine3.13 as build
COPY /example-frontend /usr/src/frontend
WORKDIR /usr/src/frontend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser --disabled-password --gecos '' appuser && \
    chown -R appuser /usr/src/frontend
USER appuser

FROM nginx:1.19-alpine
EXPOSE 5000
COPY --from=build /usr/src/frontend/build /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
