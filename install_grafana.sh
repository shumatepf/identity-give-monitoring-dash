#!/bin/bash
set -e

download_output_file="grafana.tar.gz"

# To update grafana, update the download URL and checksum below.
# New versions can be found at https://grafana.io/download/
download_url="https://dl.grafana.com/oss/release/grafana-8.0.3.linux-amd64.tar.gz"
valid_hash="db1d0584a8a7ad70057a725c503878437449341aea8b12813594fb05934d3a3f  $download_output_file"

# Download the grafana archive
wget --quiet --output-document "$download_output_file" "$download_url"

# Compare sha256sum
echo "$valid_hash" | sha256sum --check --quiet

# Extract the archive to the current directory, preserving the existing grafana.yml
tar -xzf "$download_output_file" --strip-components 1 --skip-old-files
rm "$download_output_file"
