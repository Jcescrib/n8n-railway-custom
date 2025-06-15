FROM node:18-bullseye-slim

RUN apt-get update && apt-get install -y \
    ffmpeg sox imagemagick curl gnupg \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g n8n

RUN useradd --create-home --shell /bin/bash n8n
USER n8n
WORKDIR /home/n8n

CMD ["n8n", "worker"]
