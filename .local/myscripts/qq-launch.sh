#!/bin/bash

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    exec linuxqq --ozone-platform=wayland --enable-wayland-ime "$@"
else
    exec linuxqq "$@"
fi

