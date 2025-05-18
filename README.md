# 🧠 n8n Trading Signal Bot (Render Ready)

This repo sets up an n8n instance preconfigured for a scalping-trading strategy bot, deployable to Render.com.

## 🚀 Features

- Binance candle data fetch (15m/1h/5m)
- Gold via PAXG/USDT
- ChatGPT integration with scalping strategy logic
- Telegram auto-broadcast (BUY/SELL only)
- Runs every 2 minutes

## 📦 Setup

1. Fork or clone this repo
2. Deploy to Render.com as a Web Service (Docker)
3. Set environment variables:
   - OPENAI_API_KEY
   - TELEGRAM_BOT_TOKEN

## 🛡 Security

Uses basic auth (admin/changeme by default)

## 📍 Access

After deployment: `https://your-name.onrender.com`
