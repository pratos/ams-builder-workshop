#!/bin/bash

echo "  > Running langflow..."
poetry run python -m langflow --host 0.0.0.0 --port 8000
