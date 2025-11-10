#!/bin/bash

# Build script for generating high-quality PDF from Marp slides

INPUT_FILE="generic_programming.md"
OUTPUT_FILE="generic_programming.pdf"
OUTPUT_HQ_FILE="generic_programming-hq.pdf"

echo "Building Marp slides..."

# Check if marp-cli is installed
if ! command -v marp &> /dev/null; then
    echo "Error: marp-cli is not installed"
    echo "Install with: npm install -g @marp-team/marp-cli"
    exit 1
fi

# Standard resolution PDF
echo "Generating standard PDF..."
marp "$INPUT_FILE" --pdf --allow-local-files -o "$OUTPUT_FILE"

if [ $? -eq 0 ]; then
    echo "✓ Standard PDF created: $OUTPUT_FILE"
else
    echo "✗ Failed to create standard PDF"
    exit 1
fi

# High resolution PDF (2x scale)
echo "Generating high-quality PDF (2x resolution)..."
marp "$INPUT_FILE" --pdf --allow-local-files --scale 2 -o "$OUTPUT_HQ_FILE"

if [ $? -eq 0 ]; then
    echo "✓ High-quality PDF created: $OUTPUT_HQ_FILE"
    
    # Show file sizes
    echo ""
    echo "File sizes:"
    ls -lh "$OUTPUT_FILE" "$OUTPUT_HQ_FILE" | awk '{print $9 ": " $5}'
else
    echo "✗ Failed to create high-quality PDF"
    exit 1
fi

echo ""
echo "Build complete!"
