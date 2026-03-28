<?php get_header(); ?>

<main class="page-main">
    <div class="page-inner">
        <h1 class="page-title"><?php the_title(); ?></h1>
        <div class="page-content">
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <?php the_content(); ?>
            <?php endwhile; endif; ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>
