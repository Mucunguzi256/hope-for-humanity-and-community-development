<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<header class="site-header">
    <div class="header-inner">
        <div class="site-branding">
            <a href="<?php echo home_url(); ?>" class="site-logo">
                🌍 <?php bloginfo('name'); ?>
            </a>
            <p class="site-tagline"><?php bloginfo('description'); ?></p>
        </div>

        <nav class="main-nav">
            <?php wp_nav_menu([
                'theme_location' => 'primary',
                'menu_class'     => 'nav-menu',
                'fallback_cb'    => false,
            ]); ?>
        </nav>

        <a href="<?php echo get_permalink(get_page_by_path('donate')); ?>" class="donate-btn">
            Donate Now
        </a>
    </div>
</header>
