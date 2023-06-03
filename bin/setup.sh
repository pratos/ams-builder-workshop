#!/bin/bash

echo "Setting up the repo..."
# Check if nix is installed
if ! command -v nix &> /dev/null
then
    echo "  > Nix is not installed. Installing now..."
    echo "Setting up repo"
    echo "  > Installing nix"
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux \
        --extra-conf "sandbox = false" \
        --init none \
        --no-confirm
else
    echo "  > Nix is already installed."
fi

echo "  > Adding 'use flake' to .envrc"
touch .envrc && echo "use flake" >> .envrc
direnv allow
