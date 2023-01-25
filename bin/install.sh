#!/bin/bash

CURRENT_PATH="$(dirname $(dirname $(readlink -f $0))..)"

export PATH="$PATH:$CURRENT_PATH"

buildphpdev

echo ""
echo ""
echo "Build finished!"
echo "Add the following to your rc file:"
echo ""
echo "export PATH=\"$CURRENT_PATH:\$PATH\""

