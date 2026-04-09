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
                <a href="<?php echo home_url(); ?>" class="site-logo site-logo--favicon">
                    <img src="<?php echo esc_url(get_template_directory_uri() . '/images/hfhcd-logo.png'); ?>" alt="<?php bloginfo('name'); ?>" width="80" height="80">
                    <span class="sr-only"><?php bloginfo('name'); ?></span>
                </a>
            <?php endif; ?>
        </div>

        <nav class="main-nav">
            <?php wp_nav_menu([
                'theme_location' => 'primary',
                'menu_class'     => 'nav-menu',
                'fallback_cb'    => false,
            ]); ?>
        </nav>

        <!-- Hamburger Menu Button -->
        <button class="hamburger-menu" id="hamburger-menu" aria-label="Toggle menu">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <a href="<?php echo home_url('/our-causes/'); ?>" class="donate-btn">
            Donate Now
        </a>
    </div>

    <!-- Mobile Menu Backdrop -->
    <div class="mobile-menu-backdrop" id="mobile-menu-backdrop"></div>

    <!-- Mobile Menu -->
    <div class="mobile-menu" id="mobile-menu">
        <?php wp_nav_menu([
            'theme_location' => 'primary',
            'menu_class'     => 'nav-menu',
            'fallback_cb'    => false,
        ]); ?>
        <a href="<?php echo home_url('/our-causes/'); ?>" class="donate-btn">
            Donate Now
        </a>
    </div>
</header>
