<?php get_header(); ?>

<section class="blog-hero">
    <div class="blog-hero-inner">
        <h1>Our Causes</h1>
        <p>Choose a campaign and support the communities that need help most.</p>
    </div>
</section>

<main class="page-main">
    <div class="section-inner">
        <div class="causes-grid">
            <?php
            $campaigns_query = post_type_exists('give_forms') ? new WP_Query([
                'post_type'      => 'give_forms',
                'post_status'    => 'publish',
                'posts_per_page' => -1,
                'orderby'        => 'date',
                'order'          => 'DESC',
            ]) : null;
            ?>

            <?php if ($campaigns_query && $campaigns_query->have_posts()) : ?>
                <?php while ($campaigns_query->have_posts()) : $campaigns_query->the_post(); ?>
                    <article class="cause-card">
                        <h3><?php the_title(); ?></h3>
                        <div class="cause-form-embed">
                            <?php echo do_shortcode('[give_form id="' . (int) get_the_ID() . '"]'); ?>
                        </div>
                        <?php $cause_url = function_exists('hope_humanity_get_cause_url') ? hope_humanity_get_cause_url(get_the_ID()) : get_permalink(); ?>
                        <a href="<?php echo esc_url($cause_url); ?>" class="cause-link">View Cause Details →</a>
                    </article>
                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>
            <?php else : ?>
                <article class="cause-card">
                    <div class="cause-icon" aria-hidden="true">+</div>
                    <h3>No Campaigns Yet</h3>
                    <p>Create your first GiveWP campaign form and it will appear automatically.</p>
                    <?php
                    $new_campaign_url = function_exists('hope_humanity_get_givewp_admin_url')
                        ? hope_humanity_get_givewp_admin_url('new_campaign')
                        : admin_url('edit.php?post_type=give_forms&page=give-campaigns&new=campaign');
                    ?>
                    <a href="<?php echo esc_url($new_campaign_url); ?>" class="cause-link">Add Campaign Form →</a>
                </article>
            <?php endif; ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>
