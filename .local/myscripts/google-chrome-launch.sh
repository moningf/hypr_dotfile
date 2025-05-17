#!/bin/bash
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    exec obsidian --ozone-platform=wayland --enable-wayland-ime "$@"
else
    exec obsidian "$@"
fi
