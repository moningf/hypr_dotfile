#!/usr/bin/sh
PRESET_DIR="$HOME/.config/waybar/themes"
TAEFET_DIR="$HOME/.config/waybar"

TARGET_FILE1="$TAEFET_DIR/config.jsonc"
TARGET_FILE2="$TAEFET_DIR/style.css"

THEME=$(ls "$PRESET_DIR" | gum choose --header "🎨 选择一个 waybar 主题:")

if [ -z "$THEME" ]; then
  echo "已取消更换"
  exit 0
fi

SOURCE_FILE1="$PRESET_DIR/$THEME/config.jsonc"
SOURCE_FILE2="$PRESET_DIR/$THEME/style.css"

rm -f "$TARGET_FILE1"
rm -f "$TARGET_FILE2"

ln -s "$SOURCE_FILE1" "$TARGET_FILE1"
ln -s "$SOURCE_FILE2" "$TARGET_FILE2"

pkill -SIGUSR2 waybar &
echo "waybar主题已经更换"
