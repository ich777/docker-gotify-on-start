#!/bin/bash
echo "---Sending Gotify message to server address: '${GOTIFY_URL}' with title: '${GOTIFY_TITLE}' and message: '${GOTIFY_MESSAGE}'---"
wget -qO- "${GOTIFY_URL}message?token=${GOTIFY_TOKEN}" --post-data "title=${GOTIFY_TITLE}&message=${GOTIFY_MESSAGE}&priority=${GOTIFY_PRIORITY}" &>/dev/null
echo "--- D O N E ---"