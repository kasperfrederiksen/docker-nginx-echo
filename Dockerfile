FROM nginx:1.15-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/html/
RUN echo "OK" > /etc/nginx/html/index.html

EXPOSE 80 8080 3000 4000 5000

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

