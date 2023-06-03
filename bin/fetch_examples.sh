#!/bin/bash

directory="."
absolute_directory=$(realpath "$directory")

echo " > Fetching Langflow examples..."

wget https://github.com/logspace-ai/langflow_examples/archive/refs/heads/main.zip -O langflow_examples.zip
unzip langflow_examples.zip
mv langflow_examples-main/examples .
rm -rf langflow_examples.zip
rm -rf langflow_examples-main

echo "  > Examples stored in $absolute_directory/examples"
