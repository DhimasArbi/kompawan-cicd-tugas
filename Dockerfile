FROM nginx:alpine

# Set working directory for document root
WORKDIR /usr/share/nginx/html

# Cleanup unneeded files, relative to working directory
RUN mkdir -p /usr/share/nginx/html/crud-web

COPY build/ /usr/share/nginx/html/crud-web

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
