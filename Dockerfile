FROM node:18-slim

# Install dependencies
USER root
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    python3 \
    python3-pip \
    build-essential \
    libffi-dev \
    libssl-dev \
    curl

# Install Whisper + yt-dlp
RUN pip3 install --upgrade pip && \
    pip3 install yt-dlp && \
    pip3 install git+https://github.com/openai/whisper.git

# Create app directory
WORKDIR /app

# Install n8n
RUN npm install -g n8n

# Create user and switch to it
RUN useradd -m n8nuser
USER n8nuser

# Create folders for n8n
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

CMD ["n8n"]
