#!/bin/bash

ASDF_TOOL_VERSIONS="$HOME/.tool-versions"
ASDF_REPO_VERSIONS="$HOME/.asdf/repos.txt"

# Function to extract plugin name and version from a line in .tool-versions
parse_tool_versions_line() {
    local line="$1"
    local plugin_name=$(echo "$line" | awk '{print $1}')
    local version=$(echo "$line" | awk '{$1=""; print}' | xargs)
    echo "$plugin_name:$version"
}

# Read .tool-versions file and extract plugin names and versions
IFS=$'\n'
tool_versions=($(cat $ASDF_TOOL_VERSIONS | grep -v '^#' | grep -v '^$' | while read -r line; do parse_tool_versions_line "$line"; done))

# Initialize arrays to hold plugin names and versions
declare -A plugin_names
declare -A plugin_versions

# Populate arrays with plugin names and versions
for entry in "${tool_versions[@]}"; do
    IFS=':' read -r plugin_name version <<< "$entry"
    plugin_names["$plugin_name"]=1
    plugin_versions["$plugin_name"]=$version
done

# List all installed plugins with their versions in the desired format
truncate -s 0 $ASDF_REPO_VERSIONS
for plugin in $(asdf plugin list --names); do
    if [[ ${plugin_names["$plugin"]} == 1 ]]; then
        plugin_url=$(asdf plugin list --urls | grep "^${plugin}" | awk '{print $2}')
        if [[ -n "$plugin_url" ]]; then
             echo -e "$plugin\t$plugin_url\t${plugin_versions["$plugin"]}" >> $ASDF_REPO_VERSIONS
        else
             echo "$plugin\t$plugin_url\t$plugin_versions["$plugin"]" >> $ASDF_REPO_VERSIONS
        fi
    else
        echo "$plugin Not Found N/A"
    fi
done
