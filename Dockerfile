FROM node:20.19.0-bullseye
WORKDIR /app
RUN npm install -g n8n@latest

COPY n8n_free_ai_caller_gujarati_no_ollama.json /data/n8n_free_ai_caller_gujarati.json

ENV N8N_IMPORT_EXPORT_USE_ENV=true
ENV N8N_IMPORT_EXPORT_PATH="/data/n8n_free_ai_caller_gujarati.json"
ENV N8N_IMPORT_EXPORT_MODE="import"
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV NODE_ENV=production

EXPOSE 5678
CMD ["n8n", "start"]
