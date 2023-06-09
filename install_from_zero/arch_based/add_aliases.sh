#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
REPO_DIR=$(dirname "$(dirname "$SCRIPT_DIR")");

#-----------------------------
# add custom terminal aliases
#-----------------------------
cat $REPO_DIR/alias/aliases >> ~/.zshrc 

source ~/.zshrc
