#!/bin/bash
echo "---Sending Gotify message to server address: '${GOTIFY_URL}' with title: '${GOTIFY_TITLE}' and message: '${GOTIFY_MESSAGE}'---"
wget -q "${GOTIFY_URL}message?token=${GOTIFY_TOKEN}" --post-data "title=${GOTIFY_TITLE}&message=${GOTIFY_MESSAGE}&priority=${GOTIFY_PRIORITY}"
echo "--- D O N E ---"