# 🕉️ Gujarati AI Calling Agent (Render-ready, Final Version)

This version is fully fixed for Render ✅  
- Uses Node 20+ (required for latest n8n)  
- Automatically imports Gujarati calling workflow  
- Does NOT require Ollama (uses fallback Gujarati message)

## 🚀 Deploy to Render (Free)
1. Fork or upload this folder to your GitHub account.
2. Go to [Render.com](https://render.com) → **New → Web Service**.
3. Connect your GitHub repo → select this project.
4. Choose **Free Plan**.
5. In Render → *Environment Variables*, add:

```
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=yourStrongPassword
GENERIC_TIMEZONE=Asia/Kolkata
N8N_ENCRYPTION_KEY=random_long_string
```

6. Click **Manual Deploy → Clear Build Cache & Deploy**.

✅ After deploy, logs should show:
```
n8n ready on port 5678
Editor UI: http://0.0.0.0:5678
```

7. Visit your Render URL → log in → open workflow “FREE AI Calling Agent (Gujarati)” → click **▶ Execute Workflow**.

## 🧩 Included Files
- `Dockerfile` → fixed Node 20 image, latest n8n
- `n8n_free_ai_caller_gujarati_no_ollama.json` → your Gujarati workflow
- `docker-compose.yml` → for local testing
- `README.md` → this guide

## 💡 Notes
- No paid APIs, fully free using CallMeBot.
- Works instantly on Render free tier.
- To schedule automatic daily calls, edit the Trigger node → change to Cron.

🕉️ Made for +91 7862063415
