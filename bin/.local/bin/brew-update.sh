#!/usr/bin/env bash

brew update
brew autoremove
brew cleanup -s --prune=all
brew missing
brew doctor

brew tap aws/tap
brew tap datadog/mkat https://github.com/datadog/managed-kubernetes-auditing-toolkit

brew install arttor/tap/helmify
brew install openslo/openslo/oslo
brew install fortio
brew install azure-cli
brew install datadog/mkat/managed-kubernetes-auditing-toolkit
brew install gitversion
