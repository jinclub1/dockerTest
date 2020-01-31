# Step 1 Ubuntu (Base Image)
FROM ubuntu:latest

# Step 2 Nginx install
RUN apt-get update && apt-get install -y -q nginx

# Step 3 file copy
COPY ./index.html /var/share/nginx/html/

# Step 4 nginx start
CMD ["nginx", "-g", "daemon off"]
