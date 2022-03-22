#!/bin/bash

if [ $# -ne 1 ]; then
    echo "./build.sh version"
    exit
fi

mkdir _

deno compile -A -r --unstable --target x86_64-unknown-linux-gnu -o _/denobundle_linux_amd64 https://raw.githubusercontent.com/txthinking/denobundle/master/main.js
deno compile -A -r --unstable --target x86_64-apple-darwin -o _/denobundle_darwin_amd64 https://raw.githubusercontent.com/txthinking/denobundle/master/main.js
deno compile -A -r --unstable --target x86_64-pc-windows-msvc -o _/denobundle_windows_amd64 https://raw.githubusercontent.com/txthinking/denobundle/master/main.js

nami release github.com/txthinking/denobundle $1 _

rm -rf _
