# C++ Generic Programming Slides

A comprehensive presentation about generic programming in C++ using Marp.

## Contents

- Introduction to generic programming
- Function and class templates
- Template specialization
- C++20 concepts
- Type traits and compile-time programming
- Variadic templates
- SFINAE
- Real-world examples and best practices

## Files

- `generic_programming.md` - Marp markdown source
- `generic_programming.pdf` - Exported PDF presentation

## Viewing the Slides

### In VS Code
1. Install the [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) extension
2. Open `generic_programming.md`
3. Click the preview icon

### As PDF
Open `generic_programming.pdf` in any PDF viewer

### Export to Other Formats
```bash
# Requires Marp CLI
npm install -g @marp-team/marp-cli

# Export to HTML
marp generic_programming.md -o output.html

# Export to PPTX
marp generic_programming.md -o output.pptx
```

## License

MIT
