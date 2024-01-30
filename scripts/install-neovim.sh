#!/bin/bash
set -e

curl -L --output /tmp/nvim.tar.gz -C -  \
 https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz \

sudo tar xf /tmp/nvim.tar.gz  --strip-components=1 -C /usr/local/
