# FREE Gujarati AI Calling Agent (Render Edition - Fixed Dockerfile)

This version fixes the "Command n8n not found" issue by using the full binary path.

## 🚀 How to Deploy on Render
1. Upload this folder to a new GitHub repo (e.g. `free-ai-caller-n8n`).
2. In Render → **New → Web Service → Connect GitHub Repo**.
3. Choose **Free Plan**.
4. Set Environment Variables:
   ```
   N8N_BASIC_AUTH_ACTIVE=true
   N8N_BASIC_AUTH_USER=admin
   N8N_BASIC_AUTH_PASSWORD=yourpassword
   GENERIC_TIMEZONE=Asia/Kolkata
   ```
5. Deploy → watch logs → you should see:
   ```
   n8n ready on port 5678
   ```
6. Open your Render URL → login → your Gujarati AI Caller workflow is auto-imported.

If it still fails, go to **Render → Settings → Clear Build Cache → Manual Deploy**.

✅ This image uses:
`FROM n8nio/n8n:1.75.1`
`CMD ["/usr/local/bin/n8n", "start"]`
which guarantees the binary path exists.

## ⚙️ Local Testing
```bash
docker compose up
```
Then visit [http://localhost:5678](http://localhost:5678).
