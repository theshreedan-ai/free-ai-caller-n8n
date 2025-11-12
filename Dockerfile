# Use a Node version supported by current n8n releases
FROM node:20.19.0-bullseye

# Working dir
WORKDIR /app

# Install latest n8n (use npm to get consistent binary)
RUN npm install -g n8n@latest

# Copy workflow file into container
COPY n8n_free_ai_caller_gujarati_no_ollama.json /data/n8n_free_ai_caller_gujarati.json

# Environment variables
ENV N8N_IMPORT_EXPORT_USE_ENV=true
ENV N8N_IMPORT_EXPORT_PATH="/data/n8n_free_ai_caller_gujarati.json"
ENV N8N_IMPORT_EXPORT_MODE="import"
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV NODE_ENV=production

EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
