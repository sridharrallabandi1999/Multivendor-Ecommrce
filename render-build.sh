#!/usr/bin/env bash

# Update system packages
apt-get update

# Add a PPA for the required GDAL version
add-apt-repository ppa:ubuntugis/ubuntugis-unstable -y
apt-get update

# Install GDAL and its development libraries
apt-get install -y gdal-bin libgdal-dev

# Ensure GDAL version matches the Python package
gdalinfo --version  # Verify GDAL version (should be 3.9.2)

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt
