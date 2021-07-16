#!/bin/bash
set -e

download_output_file="grafana.tar.gz"

# To update grafana, update the download URL and checksum below.
# New versions can be found at https://grafana.io/download/
download_url="https://dl.grafana.com/oss/release/grafana-8.0.6.linux-amd64.tar.gz"
valid_hash="252a4d022f4dbd9a68d07cdd0e6762d62fa53462f294781cb53e8f3d61cd8649  $download_output_file"

# Download the grafana archive
wget --quiet --output-document "$download_output_file" "$download_url"

# Compare sha256sum
echo "$valid_hash" | sha256sum --check --quiet

# Extract the archive to the current directory, preserving the existing grafana.yml
tar -xzf "$download_output_file" --strip-components 1 --skip-old-files
rm "$download_output_file"
