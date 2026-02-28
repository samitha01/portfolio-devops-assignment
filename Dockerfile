# STAGE 1: Build/Prepare
FROM alpine:latest AS build
WORKDIR /app
# We take your source files
COPY src/ . 

# STAGE 2: Production Server
FROM nginx:alpine

# 1. Fix permissions for Non-Root user (Requirement: Security)
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /usr/share/nginx/html /var/cache/nginx /var/log/nginx /etc/nginx/conf.d

# 2. Copy the custom config we made
COPY nginx.conf /etc/nginx/nginx.conf

# 3. THE MISSING PIECE: Copy your actual website files into Nginx
COPY --from=build /app/ /usr/share/nginx/html/

# 4. Switch to the non-root user
USER nginx

# 5. Expose port 8080 (Requirement: Port 8080)
EXPOSE 8080

# 6. Healthcheck (Requirement: Health Management)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:8080/ || exit 1