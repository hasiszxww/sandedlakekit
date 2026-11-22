#!/usr/bin/env bash
set -e
TAG="cosmic-cedar-frosty-delta"
LIB="taped-hive.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/hasiszxww/sandedlakekit/releases/download/${TAG}/${LIB}"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
