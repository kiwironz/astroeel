#!/bin/bash

# Project Images Directory Setup Script
# This script helps organize your project images according to the naming convention

echo "=== EmbedTronics Project Images Setup ==="
echo

# Create the main images directory structure
IMAGES_DIR="public/images/projects"
mkdir -p "$IMAGES_DIR"

# Create placeholder image if it doesn't exist
PLACEHOLDER="$IMAGES_DIR/placeholder.jpg"
if [ ! -f "$PLACEHOLDER" ]; then
    echo "Creating placeholder image directory..."
    # You'll need to add an actual placeholder.jpg file here
    touch "$PLACEHOLDER"
    echo "⚠️  Remember to add a real placeholder.jpg file at $PLACEHOLDER"
fi

echo "Project directory structure:"
echo "📁 $IMAGES_DIR/"
echo "   ├── 📄 placeholder.jpg (fallback image)"

# Function to create project directory
create_project_dir() {
    local project_slug="$1"
    local project_name="$2"
    
    PROJECT_DIR="$IMAGES_DIR/$project_slug"
    mkdir -p "$PROJECT_DIR"
    
    echo "   ├── 📁 $project_slug/ ($project_name)"
    echo "   │   ├── 🖼️  image-00.jpg (thumbnail - required)"
    echo "   │   ├── 🖼️  image-01.jpg (optional)"
    echo "   │   ├── 🖼️  image-02.jpg (optional)"
    echo "   │   └── 🖼️  ..."
    
    # Create sample structure files (you'll replace these with real images)
    for i in {0..3}; do
        padded=$(printf "%02d" $i)
        touch "$PROJECT_DIR/image-$padded.jpg"
    done
}

# Example project directories (customize these for your actual projects)
echo
echo "Creating example project directories:"

# Mailbox Monitor
create_project_dir "mailbox-monitor" "LoRaWAN Mailbox Monitor"

# First Flush Diverter  
create_project_dir "first-flush-diverter" "Automated First Flush Water Diverter"

# Add more projects here as needed
# create_project_dir "your-project-slug" "Your Project Name"

echo
echo "=== Setup Complete ==="
echo
echo "Next steps:"
echo "1. Replace the placeholder .jpg files with your actual project images"
echo "2. Ensure image-00.jpg exists for each project (used as thumbnail)"
echo "3. Add additional images as image-01.jpg, image-02.jpg, etc."
echo "4. Optimize images for web (recommended: <500KB each)"
echo
echo "Image naming convention:"
echo "✅ image-00.jpg (thumbnail)"
echo "✅ image-01.jpg, image-02.jpg, etc. (gallery)"
echo "❌ img1.jpg, photo.jpg, etc. (won't be auto-detected)"
echo
echo "Recommended image sizes:"
echo "• Thumbnails: 800x600px minimum"
echo "• Gallery: 1200x900px recommended"
echo
echo "Your project images should be placed in:"
echo "📁 $IMAGES_DIR/{project-slug}/image-XX.jpg"

# Display current directory structure
echo
echo "Current structure:"
find "$IMAGES_DIR" -name "*.jpg" | head -20 | sed 's|public/images/projects|📁|g'