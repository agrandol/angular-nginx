FROM nginx:latest

# Copy the locations file for the nginx proxy
COPY ./nginx/sites-enabled/locations.conf /etc/nginx/sites-enabled

# Copy the Angular applicatoin into the container
COPY ./dist/angular-nginx /usr/share/nginx/html
