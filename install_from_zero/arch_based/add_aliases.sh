#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
REPO_DIR=$(dirname "$(dirname "$SCRIPT_DIR")");

#-----------------------------
# add custom terminal aliases
#-----------------------------
cat $REPO_DIR/alias/aliases >> ~/.zshrc 

source ~/.zshrc

#-----------------------------
# add ambient variables for chinese lang support
#-----------------------------

# Define the lines to append
lines_to_append="
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
"

# Check if the lines already exist in the file
if grep -q "GTK_IM_MODULE=fcitx" ~/.bashrc && grep -q "QT_IM_MODULE=fcitx" ~/.bashrc && grep -q "XMODIFIERS=@im=fcitx" ~/.bashrc; then
    echo "Lines already exist in ~/.bashrc. Nothing to do."
else
    # Append lines to the end of the file
    echo "$lines_to_append" >> ~/.bashrc
    echo "Lines appended to ~/.bashrc."
fi
