<?php
/**
 * Template Name: Obsidian Page
 */

get_header();

// Get the current page slug to find corresponding PHP file
$slug = get_post_field('post_name', get_post());
$obsidian_content = locate_template("obsidian-pages/{$slug}.php");

if ($obsidian_content) {
    include($obsidian_content);
} else {
    echo '<div class="error">Obsidian content not found</div>';
}

get_footer();