#!/bin/bash

# 所有预设文件夹
PRESET_DIR="$HOME/.config/fastfetch/themes/presets"
TARGET_DIR="$HOME/.config/fastfetch"
TARGET_FILE="$TARGET_DIR/config.jsonc"

# 获取主题列表并选择
THEME=$(ls "$PRESET_DIR" | sed 's/\.jsonc//' | gum choose --header "🎨 选择一个 Fastfetch 主题:")

# 用户取消选择
if [ -z "$THEME" ]; then
    echo "已取消选择"
    exit 0
fi

SOURCE_FILE="$PRESET_DIR/$THEME.jsonc"


# 删除旧的配置文件
rm -f "$TARGET_FILE"

# 创建软链接
ln -s "$SOURCE_FILE" "$TARGET_FILE"

echo "✅ 主题 \"$THEME\" 已应用，运行 fastfetch 查看效果！"
