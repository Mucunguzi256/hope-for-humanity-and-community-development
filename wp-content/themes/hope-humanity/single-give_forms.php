<?php get_header(); ?>

<section class="blog-hero">
    <div class="blog-hero-inner">
        <span class="hero-tag">Support a Cause</span>
        <h1><?php the_title(); ?></h1>
        <p><?php echo esc_html(wp_trim_words(get_the_excerpt() ?: get_the_content(), 20, '...')); ?></p>
    </div>
</section>

<main class="page-main">
    <div class="single-post-wrap">
        <div class="single-post-content">
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <?php
                // Display the featured image if available
                if (has_post_thumbnail()) :
                    echo '<div class="single-cause-featured">';
                    the_post_thumbnail('large', ['class' => 'cause-feature-image']);
                    echo '</div>';
                endif;

                // Display the full content (including GiveWP donation form)
                the_content();
                ?>
            <?php endwhile; endif; ?>
        </div>

        <div class="single-post-footer">
            <a href="/our-causes/" class="btn-primary">← Back to All Causes</a>
        </div>
    </div>
</main>

<?php get_footer(); ?>
