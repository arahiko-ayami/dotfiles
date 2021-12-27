#!/bin/sh

USER="arahiko-ayami"
TOKEN="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"
notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications"
else
    echo "0"
fi
