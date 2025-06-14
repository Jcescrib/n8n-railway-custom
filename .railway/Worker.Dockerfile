FROM n8nio/n8n:1.93.0

USER root
RUN apt-get update && apt-get install -y \
  ffmpeg \
  sox \
  imagemagick \
  && apt-get clean && rm -rf /var/lib/apt/lists/*
USER node