FROM n8nio/n8n

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin@bot.io
ENV N8N_BASIC_AUTH_PASSWORD=yourstrongpassword

ENV N8N_HOST=n8n-render-repo.onrender.com
ENV WEBHOOK_URL=https://n8n-render-repo.onrender.com
ENV N8N_EDITOR_BASE_URL=https://n8n-render-repo.onrender.com
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678

# Avoid Redis queue mode for now
ENV EXECUTIONS_MODE=regular

# Use SQLite for simplicity
ENV DB_TYPE=sqlite

# Install dependencies
RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip && \
    pip install git+https://github.com/openai/whisper.git && \
    pip install yt-dlp

USER node
