#!/bin/bash

# Your 9-digit Student ID
ID="001492439"
BASE_URL="https://tinyurl.com/ChrisCoDV/$ID"

# List of files to download based on the specification
files=(
    "VenueDailyVisitors.csv"
    "VenueAge.csv"
    "VenueDistance.csv"
    "VenueDuration.csv"
    "VenueGender.csv"
    "VenueSpend.csv"
)

echo "Starting download for Student ID: $ID..."

for file in "${files[@]}"; do
    echo "Downloading $file..."
    # Using -L because tinyurl is a redirect service
    curl -L -O "$BASE_URL/$file"
done

echo "Done! Please verify you have 6 CSV files in your directory."