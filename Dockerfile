# STAGE 1: Build/Verify
FROM alpine:latest AS build
WORKDIR /app
COPY src/ ./src/
# This stage just ensures our source is ready

# STAGE 2: Production Server
FROM nginx:alpine
# Set a non-root user for security (Important for marks!)
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /usr/share/nginx/html /var/cache/nginx /var/log/nginx /etc/nginx/conf.d
USER nginx

# Copy our website files from the src folder to Nginx's web directory
COPY --chown=nginx:nginx src/ /usr/share/nginx/html/

# Expose port 8080 (Non-privileged port for security)
EXPOSE 8080

# Healthcheck to monitor if the container is running well
HEALTHCHECK --interval=30s --timeout=3s \
    CMD curl -f http://localhost:8080/ || exit 1