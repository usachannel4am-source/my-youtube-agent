FROM n8nio/n8n:latest 
USER root COPY --from=alpine:3.24 /sbin/apk /sbin/apk COPY --from=alpine:3.24 /lib/apk /lib/apk COPY --from=alpine:3.24 /etc/apk /etc/apk COPY --from=alpine:3.24 /usr/lib/libapk* /usr/lib
RUN apk add --no-cache bash ffmpeg python3 py3-pip
RUN pip install --no-cache-dir --break-system-packages edge-tts
USER node
