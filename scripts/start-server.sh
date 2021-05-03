#!/bin/bash
echo "---Sending Gotify message to server address: '${GOTIFY_URL}' with title: '${PUSHOVER_TITLE}' and message: '${PUSHOVER_MESSAGE}'---"
wget -q "${GOTIFY_URL}message?token=${GOTIFY_TOKEN}" --post-data "title=${GOTIFY_TITLE}&message=${GOTIFY_MESSAGE}&priority=${GOTIFY_PRIORITY}"
echo "--- D O N E ---"