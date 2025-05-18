{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # \uc0\u55358 \u56800  n8n Trading Signal Bot (Render Ready)\
\
This repo sets up an n8n instance preconfigured for a scalping-trading strategy bot, deployable to Render.com.\
\
## \uc0\u55357 \u56960  Features\
\
- Binance candle data fetch (15m/1h/5m)\
- Gold via PAXG/USDT\
- ChatGPT integration with scalping strategy logic\
- Telegram auto-broadcast (BUY/SELL only)\
- Runs every 2 minutes\
\
## \uc0\u55357 \u56550  Setup\
\
1. Fork or clone this repo\
2. Deploy to Render.com as a Web Service (Docker)\
3. Set environment variables:\
   - OPENAI_API_KEY\
   - TELEGRAM_BOT_TOKEN\
\
## \uc0\u55357 \u57057  Security\
\
Uses basic auth (admin/changeme by default)\
\
## \uc0\u55357 \u56525  Access\
\
After deployment: `https://your-name.onrender.com`\
}