# 1. Base Image: We start with an official Nginx image. Nginx is a lightweight web server.
FROM nginx:latest

# 2. Cleanup: Remove the default static content Nginx puts there.
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy Code: Copy your local files into the correct directory for Nginx to serve them.
# The `.` means "everything in the current directory" on your machine.
COPY index.html /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/

# 4. Exposure: Indicate that the container will listen on port 80 (the default for Nginx).
EXPOSE 80