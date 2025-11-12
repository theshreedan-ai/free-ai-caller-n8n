# Use Node official image
FROM node:18-bullseye

# Create working directory
WORKDIR /app

# Install n8n globally
RUN npm install -g n8n@latest

# Copy workflow file
COPY n8n_free_ai_caller_gujarati.json /data/

# Set environment variables
ENV N8N_IMPORT_EXPORT_USE_ENV=true
ENV N8N_IMPORT_EXPORT_PATH="/data/n8n_free_ai_caller_gujarati.json"
ENV N8N_IMPORT_EXPORT_MODE="import"
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_PORT=5678

# Recommended settings
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV NODE_ENV=production

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
