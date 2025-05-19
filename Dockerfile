FROM n8nio/n8n

# Basic authentication to secure your instance
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin@bot.io
ENV N8N_BASIC_AUTH_PASSWORD=Admin@123

# Web UI and webhook URLs
ENV N8N_HOST=n8n-render-repo.onrender.com
ENV WEBHOOK_URL=https://n8n-render-repo.onrender.com
ENV N8N_EDITOR_BASE_URL=https://n8n-render-repo.onrender.com
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678

# Optional: Reduce startup time (optional for Render)
ENV EXECUTIONS_MODE=queue
ENV DB_TYPE=sqlite
