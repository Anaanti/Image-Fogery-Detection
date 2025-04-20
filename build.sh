#!/usr/bin/env bash
# exit on error
set -o errexit

# Install system dependencies
apt-get update
apt-get install -y \
    python3-dev \
    libopenblas-dev \
    gfortran \
    build-essential \
    libatlas-base-dev

# Upgrade pip and install packages
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt