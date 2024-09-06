# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy static files to the Nginx server directory
COPY ./index.html /usr/share/nginx/html/
COPY ./favicon.png /usr/share/nginx/html/
COPY ./zerotohero.html /usr/share/nginx/html/
COPY ./success.html /usr/share/nginx/html/
COPY ./jobs.html /usr/share/nginx/html/
COPY ./cert.html /usr/share/nginx/html/
COPY ./courses.html /usr/share/nginx/html/
COPY ./tou.html /usr/share/nginx/html/
COPY ./devops.html /usr/share/nginx/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

