<?php
function hope_humanity_setup() {
    register_nav_menus([
        'primary' => __('Primary Menu', 'hope-humanity'),
    ]);
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('html5', ['search-form', 'comment-form', 'gallery']);
}
add_action('after_setup_theme', 'hope_humanity_setup');

function hope_humanity_styles() {
    wp_enqueue_style(
        'hope-humanity-style',
        get_template_directory_uri() . '/style.css',
        [],
        time()
    );
}
add_action('wp_enqueue_scripts', 'hope_humanity_styles');
