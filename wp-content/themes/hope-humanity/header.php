<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<header class="site-header">
    <div class="header-inner">
        <div class="site-branding">
            <?php if (has_custom_logo()) : ?>
                <div class="site-logo site-logo--image">
                    <?php the_custom_logo(); ?>
                </div>
            <?php else : ?>
                <a href="<?php echo home_url(); ?>" class="site-logo">
                    <?php bloginfo('name'); ?>
                </a>
            <?php endif; ?>
            <p class="site-tagline"><?php bloginfo('description'); ?></p>
        </div>

        <nav class="main-nav">
            <?php wp_nav_menu([
                'theme_location' => 'primary',
                'menu_class'     => 'nav-menu',
                'fallback_cb'    => false,
            ]); ?>
        </nav>

        <?php $donate_page = get_page_by_path('donate'); ?>
        <a href="<?php echo $donate_page ? get_permalink($donate_page) : home_url('/donate'); ?>" class="donate-btn">
            Donate Now
        </a>
    </div>
</header>
