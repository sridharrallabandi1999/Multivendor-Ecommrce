#!/usr/bin/env bash
# Exit on errors
set -o errexit

# Install GDAL 3.9.2 or newer
sudo apt-get update && sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update && sudo apt-get install -y gdal-bin libgdal-dev

# Check installed GDAL version (for debugging)
gdalinfo --version

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt
