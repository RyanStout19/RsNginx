# This pulls the image and version from docker
FROM nginx:latest
# This step removes the default html file
RUN rm /usr/share/nginx/html/index.html
# This will copy out custom html to the default file path
COPY index.html /usr/share/nginx/html/index.html