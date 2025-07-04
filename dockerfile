# Use official Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && apt-get install -y nginx unzip wget

# Remove default html directory
RUN rm -rf /var/www/html/*

# Copy site files into the container
COPY templatemo_588_ebook_landing /var/www/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
