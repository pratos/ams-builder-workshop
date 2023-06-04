#!/bin/bash

echo "Setup repo using poetry..."
poetry --version
poetry env use 3.10.1
poetry install
