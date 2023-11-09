#!/bin/sh

mkdir /etc/systemd/system/ollama.service.d

echo "[Service]
Environment=OLLAMA_HOST=0.0.0.0:11434
Environment=OLLAMA_ORIGINS=http://0.0.0.0:*,http://3.127.248.0:*" > /etc/systemd/system/ollama.service.d/environment.conf

systemctl daemon-reload
systemctl restart ollama

echo "inside api.js change line 28 with correct host, i.e.:http://3.127.248.0:11434"