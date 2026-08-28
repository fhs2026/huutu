```bash
#!/bin/bash

set -e

DEB_URL="https://github.com/fhs2026/huutu/raw/refs/heads/main/fahasa-launcher_1.0.1_all.deb"
DEB_FILE="/tmp/fahasa-launcher_1.0.1_all.deb"

echo "Đang tải fahasa-launcher_1.0.1_all.deb..."

curl -L -o "$DEB_FILE" "$DEB_URL"

echo "Đang cài đặt fahasa-launcher_1.0.1_all.deb..."

sudo apt install -y "$DEB_FILE"

echo "Cài đặt hoàn tất!"
```
