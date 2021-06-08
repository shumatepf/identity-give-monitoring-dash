#!/bin/bash
set -e

# To update grafana, update the download URL and checksum below.
# New versions can be found at https://grafana.io/download/
grafana_download_url="https://dl.grafana.com/oss/release/grafana-8.0.0.linux-amd64.tar.gz"
grafana_sha256sum="6f006990fcb89307e7911b0b3a4b54810c7e4a6f16240d9deb979f3010a71a9e  grafana.tar.gz"

# Download the grafana archive
download_output_file="grafana.tar.gz"
wget --quiet --output-document "$download_output_file" "$grafana_download_url"

# Compare sha256sum
download_hash="$(sha256sum "$download_output_file")"

if [[ "$download_hash" != "$grafana_sha256sum" ]]; then
    echo "sha256sum failed validation"
    exit 1
fi

# Extract the archive to the current directory, preserving the existing grafana.yml
tar -xzf "$download_output_file" --strip-components 1 --skip-old-files
rm "$download_output_file"
