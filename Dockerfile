# Use official Nginx lightweight image
FROM nginx:alpine

# Copy the web build files from the downloaded release folder into Nginx public path
COPY app-files/*/. /usr/share/nginx/html

# Expose web port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
