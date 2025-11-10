.PHONY: all standard hq clean help

# Variables
INPUT = generic_programming.md
OUTPUT = generic_programming.pdf
OUTPUT_HQ = generic_programming-hq.pdf
MARP = marp
MARP_FLAGS = --pdf --allow-local-files

# Default target
all: standard hq

# Standard resolution PDF
standard:
	@echo "Building standard resolution PDF..."
	$(MARP) $(MARP_FLAGS) $(INPUT) -o $(OUTPUT)
	@echo "✓ Created: $(OUTPUT)"

# High quality PDF (2x resolution)
hq:
	@echo "Building high-quality PDF (2x resolution)..."
	$(MARP) $(MARP_FLAGS) --scale 2 $(INPUT) -o $(OUTPUT_HQ)
	@echo "✓ Created: $(OUTPUT_HQ)"

# Clean generated files
clean:
	@echo "Cleaning generated files..."
	rm -f $(OUTPUT) $(OUTPUT_HQ)
	@echo "✓ Cleaned"

# Show file sizes
size:
	@ls -lh $(OUTPUT) $(OUTPUT_HQ) 2>/dev/null | awk '{print $$9 ": " $$5}' || echo "No PDF files found"

# Help
help:
	@echo "Available targets:"
	@echo "  make all       - Build both standard and high-quality PDFs"
	@echo "  make standard  - Build standard resolution PDF"
	@echo "  make hq        - Build high-quality PDF (2x resolution)"
	@echo "  make clean     - Remove generated PDF files"
	@echo "  make size      - Show file sizes of generated PDFs"
	@echo "  make help      - Show this help message"
