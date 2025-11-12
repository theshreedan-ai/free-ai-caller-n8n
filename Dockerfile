FROM n8nio/n8n:1.75.1

COPY n8n_free_ai_caller_gujarati.json /data/

ENV N8N_IMPORT_EXPORT_USE_ENV=true
ENV N8N_IMPORT_EXPORT_PATH="/data/n8n_free_ai_caller_gujarati.json"
ENV N8N_IMPORT_EXPORT_MODE="import"
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_PORT=5678

# ✅ Use full path to n8n binary
CMD ["/usr/local/bin/n8n", "start"]
