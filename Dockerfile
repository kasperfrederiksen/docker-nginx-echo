FROM nginx:1.15-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /etc/nginx/html/
RUN echo "OK" > /etc/nginx/html/index.html


EXPOSE 80
EXPOSE 8080
EXPOSE 4000
EXPOSE 5000

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]

