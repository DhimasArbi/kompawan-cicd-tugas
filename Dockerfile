FROM nginx:alpine

# Set working directory for document root
WORKDIR /usr/share/nginx/html

# Cleanup unneeded files, relative to working directory
RUN rm -rf ./*

COPY crud-web/* /usr/share/nginx/html/

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
