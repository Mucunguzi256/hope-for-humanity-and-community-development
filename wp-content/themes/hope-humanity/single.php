<?php get_header(); ?>

<section class="blog-hero">
    <div class="blog-hero-inner">
        <span class="hero-tag">News & Updates</span>
        <h1><?php the_title(); ?></h1>
        <p class="single-post-meta">
            <?php echo get_the_date('F j, Y'); ?> &nbsp;·&nbsp; By <?php the_author(); ?>
        </p>
    </div>
</section>

<main class="page-main">
    <div class="single-post-wrap">
        <div class="single-post-content">
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <?php the_content(); ?>
            <?php endwhile; endif; ?>
        </div>

        <div class="single-post-footer">
            <a href="/news-updates/" class="btn-primary">← Back to News</a>
        </div>
    </div>
</main>

<?php get_footer(); ?>
