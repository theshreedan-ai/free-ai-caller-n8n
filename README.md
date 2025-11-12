# FREE Gujarati AI Calling Agent (Render Edition)

This project deploys an **n8n workflow** on Render that generates Gujarati AI messages and sends free calls using **CallMeBot**.

## 🧩 Features
- 💯 100% free setup — no trials or paid APIs
- 🇮🇳 Gujarati AI message generation (optional via Ollama)
- ☎️ CallMeBot voice/WhatsApp call integration
- 🧠 Auto-imported workflow on Render startup

## 🚀 Deployment (on Render)
1. Fork or upload this repo to your GitHub.
2. Go to [https://render.com](https://render.com).
3. Click **New → Web Service → Connect GitHub Repo**.
4. Select this repo.
5. Render will detect the Dockerfile automatically.
6. Choose **Free Plan**.
7. Set these environment variables:
   ```
   N8N_BASIC_AUTH_ACTIVE=true
   N8N_BASIC_AUTH_USER=admin
   N8N_BASIC_AUTH_PASSWORD=yourpassword
   GENERIC_TIMEZONE=Asia/Kolkata
   ```
8. Click **Deploy Web Service**.

When it’s done, open your Render URL like:
```
https://free-ai-caller.onrender.com
```
→ login with your password → your Gujarati AI Caller workflow will already be imported.

## ⚙️ Run Locally
If you want to test locally:
```bash
docker compose up
```
Visit [http://localhost:5678](http://localhost:5678) and login (`admin/admin123`).

## 🧠 Notes
- The workflow uses your number: +91 7862063415.
- It calls via CallMeBot (free).
- You can edit the Config node to change number or message.
- If you want Gujarati AI generation, install Ollama locally and run:
  ```bash
  curl -fsSL https://ollama.com/install.sh | sh
  ollama run llama3
  ```
