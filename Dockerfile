FROM nginx:alpine

# Define a build-time argument for versioning
ARG APP_VERSION=1.0.0

# Label the image with version info only
LABEL version="${APP_VERSION}"

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML files
COPY html/ /usr/share/nginx/html/

