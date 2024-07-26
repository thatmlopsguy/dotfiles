#!/usr/bin/env bash

brew update
brew autoremove
brew cleanup -s --prune=all
brew missing
brew doctor

brew install arttor/tap/helmify
brew install openslo/openslo/oslo
