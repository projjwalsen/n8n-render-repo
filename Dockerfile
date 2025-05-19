FROM n8nio/n8n

# Environment variables for n8n setup
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin@bot.io
ENV N8N_BASIC_AUTH_PASSWORD=yourstrongpassword

ENV N8N_HOST=n8n-render-repo.onrender.com
ENV WEBHOOK_URL=https://n8n-render-repo.onrender.com
ENV N8N_EDITOR_BASE_URL=https://n8n-render-repo.onrender.com
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678

ENV EXECUTIONS_MODE=regular
ENV DB_TYPE=sqlite

# Install ffmpeg, yt-dlp, and Whisper
USER root

RUN apt-get update && \
    apt-get install -y ffmpeg python3-pip git && \
    pip install yt-dlp && \
    pip install git+https://github.com/openai/whisper.git

USER node
