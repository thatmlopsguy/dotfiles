#!/usr/bin/env bash

echo "Exporting Visual Studio Code extensions"

code --list-extensions > extensions.txt
sed -i '1d' extensions.txt
