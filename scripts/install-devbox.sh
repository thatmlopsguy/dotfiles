#!/usr/bin/env bash

# https://nixos.org/download/#nix-install-windows
sh <(curl -L https://nixos.org/nix/install) --daemon
nix-shell -p nix-info --run "nix-info -m"

# https://www.jetify.com/devbox/docs/installing_devbox/
curl -fsSL https://get.jetify.com/devbox | bash
