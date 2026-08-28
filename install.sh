#!/bin/bash

set -e

DEB_URL="https://github.com/fhs2026/huutu/raw/refs/heads/main/fahasa-launcher_1.0.1_all.deb"
DEB_FILE="/tmp/fahasa-launcher_1.0.1_all.deb"

echo "================================"
echo "       Cài đặt FHS"
echo "================================"

echo "Đang tải gói cài đặt..."
curl -fL "$DEB_URL" -o "$DEB_FILE"

echo "Đang cài đặt..."
sudo apt install -y "$DEB_FILE"

rm -f "$DEB_FILE"

echo "================================"
echo "      Cài đặt thành công!"
echo "================================"
