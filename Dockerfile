FROM n8nio/n8n:latest
USER root
RUN apk update
RUN apk add -- no-cache -- ffmpeg python3 py3-pip
RUN pip install, -- no-cache-dir -- break-system-packages edge-tts
USER node
