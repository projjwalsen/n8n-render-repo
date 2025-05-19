FROM n8nio/n8n

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

# Switch to root to install packages
USER root

# Install system dependencies and Python tools
RUN apk update && apk add --no-cache \
    ffmpeg \
    git \
    py3-pip \
    python3 \
    build-base \
    libffi-dev \
    openssl-dev \
    cargo \
    && pip install --upgrade pip \
    && pip install yt-dlp \
    && pip install git+https://github.com/openai/whisper.git

# Return to non-root user
USER node
