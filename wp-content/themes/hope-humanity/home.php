<?php get_header(); ?>

<main class="page-main">
    <div class="section-header" style="margin-bottom: 3rem;">
        <h2 style="font-size: 2.2rem; font-weight: 800; color: #0f3460;">News & Updates</h2>
        <p style="color: #718096;">Latest stories, impact reports and updates from Hope for Humanity.</p>
    </div>

    <div class="blog-grid">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <div class="blog-card">
            <div class="blog-card-body">
                <span class="blog-date"><?php echo get_the_date('F j, Y'); ?></span>
                <h3><?php the_title(); ?></h3>
                <p><?php echo wp_trim_words(get_the_content(), 25, '...'); ?></p>
                <a href="<?php the_permalink(); ?>" class="blog-link">Read More →</a>
            </div>
        </div>
        <?php endwhile; endif; ?>
    </div>
</main>

<?php get_footer(); ?>
