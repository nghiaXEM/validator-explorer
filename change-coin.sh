#!/bin/bash
set -euo pipefail

# ======================
# Config
# ======================
# Danh sách thư mục cần duyệt
FOLDERS=("templates" "ui-package" "utils")

# Chuỗi cần thay
DEFAULT_COIN="YOUR_COIN"
DEFAULT_COIN_FULL="YOUR_COIN_FULL"

# Chuỗi thay thế
REPLACE_COIN="CUSTOME"
REPLACE_COIN_FULL="CUSTOME_FULL"

# ======================
# Thực thi
# ======================

for folder in "${FOLDERS[@]}"; do
  if [ -d "$folder" ]; then
    echo "🔍 Đang xử lý thư mục: $folder"
    # Tìm toàn bộ file và thay thế trực tiếp
    find "$folder" -type f -exec sed -i "s/${DEFAULT_COIN}/${REPLACE_COIN}/g" {} +
  else
    echo "⚠️ Bỏ qua, không phải thư mục: $folder"
  fi
done

for folder in "${FOLDERS[@]}"; do
  if [ -d "$folder" ]; then
    echo "🔍 Đang xử lý thư mục: $folder"
    # Tìm toàn bộ file và thay thế trực tiếp
    find "$folder" -type f -exec sed -i "s/${DEFAULT_COIN_FULL}/${REPLACE_COIN_FULL}/g" {} +
  else
    echo "⚠️ Bỏ qua, không phải thư mục: $folder"
  fi
done

echo "✅ Hoàn tất thay thế '${DEFAULT_COIN_FULL}' → '${REPLACE_TEXT}'"
