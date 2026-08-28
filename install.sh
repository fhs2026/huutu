#!/bin/bash

set -e

DEB_URL="https://github.com/fhs2026/huutu/releases/download/V1.0.1/fahasa-launcher_1.0.1_all.deb"
DEB_FILE="/tmp/fahasa-launcher_1.0.1_all.deb"

echo "================================"
echo "       Cài đặt FHS"
echo "================================"

if ! command -v curl >/dev/null 2>&1; then
    echo "Đang cài curl..."
    sudo apt update
    sudo apt install -y curl
fi

echo "Đang tải gói cài đặt..."
curl -fL "$DEB_URL" -o "$DEB_FILE"

if [ ! -s "$DEB_FILE" ]; then
    echo "Lỗi: Không tải được gói cài đặt."
    exit 1
fi

echo "Đang cài đặt..."
sudo apt install -y "$DEB_FILE"

rm -f "$DEB_FILE"

echo "================================"
echo "      Cài đặt thành công!"
echo "================================"
