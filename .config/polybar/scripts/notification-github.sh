#!/bin/sh

USER="arahiko-ayami"
TOKEN="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"
notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications"
else
    echo "0"
fi
