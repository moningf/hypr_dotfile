#!/bin/bash

# 定义 class 名称
window_class="todo_window"

# 检查是否已有 todo_window 存在
if hyprctl clients | grep -q "class: $window_class"; then
    # 如果找到了，什么都不做
    exit 0
else
    # 否则，打开新的 kitty 窗口，带上 class 名称，并打开 todo.md
    kitty --class "$window_class" nvim ~/todo.md
fi

