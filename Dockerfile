# Start from the official n8n image
FROM n8nio/n8n:1.46.0

# ---- install OS libraries Sharp needs ----
USER root
RUN apk add --no-cache vips-dev fftw-dev

# ---- install the Sharp npm package globally ----
RUN npm install -g sharp@0.33.3
USER node
