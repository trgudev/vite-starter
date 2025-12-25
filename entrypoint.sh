#!/bin/sh
CONFIG_FILE="/usr/share/nginx/html/env-config.js"

if [ ! -f "$CONFIG_FILE" ]; then
  echo "window.__ENV__ = {};" > "$CONFIG_FILE"
fi

echo "" >> "$CONFIG_FILE"

env | grep -E "^VITE_" | while read -r line; do
  key=${line%%=*}
  value=${line#*=}

  # 转义双引号、反斜杠和换行符
  value=$(echo "$value" | sed 's/\\/\\\\/g; s/"/\\"/g; s/'"'"'/\\'"'"'/g; s/\n/\\n/g; s/\r/\\r/g; s/\t/\\t/g')

  echo "window.__ENV__['$key'] = \"$value\";" >> "$CONFIG_FILE"
done

exec "$@"
