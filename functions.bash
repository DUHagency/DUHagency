#!/bin/bash
# obsidian-publisher.sh

# Configuration
VAULT_PATH="$HOME/Obsidian/MyVault"
WP_THEME_DIR="wp-content/themes/mycommerce-theme"
TEMP_DIR="/tmp/obsidian-publish"
SSH_USER="youruser"
SSH_HOST="yourdomain.com"

# Create temp directory
mkdir -p "$TEMP_DIR"

# Convert all markdown files to PHP and maintain structure
find "$VAULT_PATH" -name "*.md" | while read -r file; do
    # Get relative path
    rel_path="${file#$VAULT_PATH/}"
    
    # Create directory structure in temp
    temp_dir="$TEMP_DIR/$(dirname "$rel_path")"
    mkdir -p "$temp_dir"
    
    # Convert to PHP
    php_file="${rel_path%.md}.php"
    
    # Create PHP file with front matter and processed content
    {
        echo "<?php /*"
        echo "Template Name: Obsidian Page"
        echo "*/ ?>"
        echo ""
        echo "<?php get_header(); ?>"
        echo "<div class='obsidian-content'>"
        pandoc -f markdown -t html "$file" | sed 's/\.md/.php/g'
        echo "</div>"
        echo "<?php get_footer(); ?>"
    } > "$TEMP_DIR/$php_file"
done

# Upload to server
rsync -avz -e ssh "$TEMP_DIR/" "$SSH_USER@$SSH_HOST:$WP_THEME_DIR/obsidian-pages/"

# Cleanup
rm -rf "$TEMP_DIR"