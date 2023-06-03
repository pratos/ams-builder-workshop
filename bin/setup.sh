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

echo "  > Installing lxml related dependencies"
OS=$(uname)

if [ "$OS" == "Darwin" ]; then
    echo "This is a macOS system. Installing with brew..."
    # Brew installation command here
    brew install libxml2 libxslt
elif [ "$OS" == "Linux" ]; then
    echo "This is a Linux system. Installing with apt..."
    # Apt installation command here
    sudo apt-get install libxml2 libxslt1-dev
else
    echo "Unknown operating system."
fi

echo "  > Adding 'use flake' to .envrc"
touch .envrc && echo "use flake" >> .envrc
direnv allow
