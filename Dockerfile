# Use the official Nginx image
FROM nginx:latest

# Copy your static website files to Nginx's public directory
COPY . /usr/share/nginx/html
