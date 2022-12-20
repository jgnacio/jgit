#!/bin/bash

echo -e "jgit by (jgnacio)\nInstalling..."
SHELL_USED=$(echo "$SHELL" | tr '/' ' ' | awk '{print $2}')
RC="${SHELL_USED}rc"
echo "Shell used for this user: $SHELL_USED"
echo "alias jgit='$PWD/jgit'" >> ~/.$RC
echo "added at the end of file: ~/.$RC"
echo "restart the shell to use jgit ;)"
