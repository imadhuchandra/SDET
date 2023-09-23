# Use an Alpine Linux base image
FROM alpine:latest

# Update the package list and install necessary dependencies
RUN apk update && apk add --no-cache openjdk11 nodejs npm
       # Add other dependencies as needed

# Install Playwright
RUN npm install -g playwright


# Set up your application
COPY . /app
WORKDIR /app

# Expose ports
EXPOSE 3000

# Define environment variables
ENV PLAYWRIGHT_BROWSERS chromium firefox


# Clean up
RUN rm -rf /var/cache/apk/*

# Set up your application, expose ports, define environment variables, and add application files as needed
