FROM n8nio/n8n:latest
# n8n की Alpine वाली base image में ffmpeg और आवाज़ बनाने वाला टूल जोड़ना
USER root
RUN apk add --no-cache ffmpeg python3 py3-pip
RUN pip install --no-cache-dir --break-system-packages edge-tts
USER node
