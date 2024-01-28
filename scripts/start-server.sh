#!/bin/bash
# Replace HOST_IP with the IP from the Host - only works when container is ran on host interface!
if grep -q "HOST_IP" <<< "${GOTIFY_MESSAGE}" ; then
  HOST_IP=$(hostname -I | awk '{print $1}')
  GOTIFY_MESSAGE=$(sed "s/HOST_IP/${HOST_IP}/" <<< "${GOTIFY_MESSAGE}")
fi

echo "---Sending Gotify message to server address: '${GOTIFY_URL}' with title: '${GOTIFY_TITLE}' and message: '${GOTIFY_MESSAGE}'---"
wget -qO- "${GOTIFY_URL}message?token=${GOTIFY_TOKEN}" --post-data "title=${GOTIFY_TITLE}&message=${GOTIFY_MESSAGE}&priority=${GOTIFY_PRIORITY}" &>/dev/null
echo "--- D O N E ---"