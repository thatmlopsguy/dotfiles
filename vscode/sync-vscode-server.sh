#! /usr/bin/env bash

apply=false
backup=false

# Parse command-line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -a|--apply)
            apply=true
            shift
            ;;
        -b|--backup)
            backup=true
            shift
            ;;
        *)
            echo "Unknown argument: $1"
            exit 1
            ;;
    esac
done

# Default to restoring settings if no option is provided
if [ "$backup" = false ] && [ "$apply" = false ]; then
    backup=true
fi

windowsUserProfile=/mnt/c/Users/$(cmd.exe /c "echo %USERNAME%" 2>/dev/null | tr -d '\r')

if [ "$backup" = true ]; then
    echo "backup existing settings"
    cp ${windowsUserProfile}/AppData/Roaming/Code/User/settings.json .vscode-server/data/Machine/settings.json
else
    echo "apply new settings"
    cp .vscode-server/data/Machine/settings.json ${windowsUserProfile}/AppData/Roaming/Code/User/settings.json
fi

echo "sync complete"
