#!/bin/bash

echo "🚨 بدء عملية التنظيف الكبرى لمستودع Adlk..."
echo "------------------------------------------"

# حذف ملفات Legacy في الجذر
LEGACY_FILES=(
  "App.js"
  "LOGO.txt"
)

for file in "${LEGACY_FILES[@]}"; do
  if [ -f "$file" ]; then
    echo "🗑️ حذف الملف: $file"
    rm -f "$file"
  else
    echo "✔️ غير موجود: $file"
  fi
done

# حذف مجلدات منصات غير مستخدمة
LEGACY_DIRS=(
  "src"
  "linux"
  "macos"
  "windows"
  "web"
)

for dir in "${LEGACY_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "🗑️ حذف المجلد: $dir"
    rm -rf "$dir"
  else
    echo "✔️ غير موجود: $dir"
  fi
done

# حذف مجلد ui القديم داخل lib
if [ -d "lib/ui" ]; then
  echo "🗑️ حذف lib/ui (هيكل قديم)"
  rm -rf "lib/ui"
else
  echo "✔️ lib/ui غير موجود"
fi

# حذف placeholder service
PLACEHOLDER="lib/services/placeholder_service.dart"
if [ -f "$PLACEHOLDER" ]; then
  echo "🗑️ حذف placeholder service"
  rm -f "$PLACEHOLDER"
else
  echo "✔️ placeholder service غير موجود"
fi

echo "------------------------------------------"
echo "✅ انتهت عملية التنظيف بنجاح"
