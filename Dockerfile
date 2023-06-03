# We'll use Python's official Alpine image as our base image
FROM python:3.10-alpine

# Set a working directory
WORKDIR /usr/src/app

# Install dependencies
RUN apk add --no-cache \
    libxml2-dev \
    libxslt-dev \
    libpq-dev \
    build-base

# Upgrade pip
RUN pip install --upgrade pip

# Install Python libraries
RUN pip install lxml psycopg2-binary langflow

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["python -m langflow --host 0.0.0.0 --port 8000 && exec bash"]
