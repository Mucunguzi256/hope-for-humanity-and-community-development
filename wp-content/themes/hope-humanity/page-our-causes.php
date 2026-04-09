<?php get_header(); ?>

<style>
.causes-archive-hero .blog-hero-inner {
    max-width: 760px;
    margin: 0 auto;
    text-align: center;
}

.causes-archive-hero h1 {
    margin-bottom: 0.65rem;
    color: #1f2937;
    letter-spacing: -0.02em;
}

.causes-archive-hero p {
    margin: 0 auto;
    max-width: 620px;
    color: #4b5563;
    line-height: 1.7;
}

.causes-archive-hero p::before {
    content: '';
    display: block;
    width: 64px;
    height: 4px;
    margin: 0 auto 0.9rem;
    border-radius: 999px;
    background: linear-gradient(135deg, #2e7d32, #66bb6a);
}

.causes-archive {
    background: #f9fafb;
}

.causes-archive-grid {
    display: grid;
    grid-template-columns: repeat(3, minmax(0, 1fr));
    gap: 1.5rem;
}

.cause-archive-card {
    background: #ffffff;
    border-radius: 16px;
    box-shadow: 0 10px 26px rgba(17, 24, 39, 0.08);
    border: 1px solid rgba(46, 125, 50, 0.12);
    overflow: hidden;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.cause-archive-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 16px 30px rgba(17, 24, 39, 0.12);
}

.cause-archive-image {
    width: 100%;
    height: 220px;
    object-fit: cover;
    display: block;
}

.cause-archive-placeholder {
    width: 100%;
    height: 220px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(135deg, #e8f5e9, #f1f8e9);
    color: #2e7d32;
    font-size: 2.2rem;
    font-weight: 800;
}

.cause-archive-body {
    padding: 1.1rem 1.1rem 1.25rem;
}

.cause-archive-title {
    margin: 0 0 0.45rem;
    color: #1f2937;
    font-size: 1.35rem;
    line-height: 1.2;
}

.cause-archive-desc {
    color: #4b5563;
    margin: 0 0 0.9rem;
    line-height: 1.55;
    min-height: 3.2rem;
}

.cause-archive-amounts {
    margin: 0 0 0.55rem;
    color: #2d3748;
    font-size: 0.92rem;
    font-weight: 600;
}

.cause-archive-progress {
    width: 100%;
    height: 8px;
    border-radius: 999px;
    background: #e5e7eb;
    overflow: hidden;
    margin-bottom: 1rem;
}

.cause-archive-progress-fill {
    height: 100%;
    background: #66bb6a;
    border-radius: 999px;
}

.cause-archive-btn {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    min-height: 44px;
    width: 100%;
    border-radius: 999px;
    color: #ffffff;
    text-decoration: none;
    font-weight: 700;
    background: linear-gradient(135deg, #ffb74d, #ff9800);
    transition: transform 0.2s ease;
}

.cause-archive-btn:hover {
    transform: scale(1.02);
}

@media (max-width: 1024px) {
    .causes-archive-grid {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

@media (max-width: 768px) {
    .causes-archive-grid {
        grid-template-columns: 1fr;
    }
}
</style>

<section class="blog-hero causes-archive-hero">
    <div class="blog-hero-inner">
        <h1>Our Causes</h1>
        <p>Choose a campaign and support the communities that need help most.</p>
    </div>
</section>

<main class="page-main causes-archive">
    <div class="section-inner">
        <div class="causes-archive-grid">
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
                    <?php
                    $form_id      = (int) get_the_ID();
                    $cause_url    = function_exists('hope_humanity_get_cause_url') ? hope_humanity_get_cause_url($form_id) : get_permalink($form_id);
                    $cause_page_id = function_exists('hope_humanity_get_campaign_page_id_from_form') ? (int) hope_humanity_get_campaign_page_id_from_form($form_id) : 0;
                    $goal_raw     = function_exists('give_get_meta') ? (float) give_get_meta($form_id, '_give_set_goal', true) : (float) get_post_meta($form_id, '_give_set_goal', true);
                    $raised_raw   = function_exists('give_get_form_earnings_stats') ? (float) give_get_form_earnings_stats($form_id) : 0.0;
                    $progress_pct = ($goal_raw > 0) ? min(100, ($raised_raw / $goal_raw) * 100) : 0;

                    if (function_exists('give_currency_filter') && function_exists('give_format_amount')) {
                        $raised_text = give_currency_filter(give_format_amount(max(0, $raised_raw)));
                        $goal_text   = $goal_raw > 0 ? give_currency_filter(give_format_amount($goal_raw)) : __('No target set', 'hope-humanity');
                    } else {
                        $raised_text = '$' . number_format(max(0, $raised_raw), 2);
                        $goal_text   = $goal_raw > 0 ? '$' . number_format($goal_raw, 2) : __('No target set', 'hope-humanity');
                    }

                    $image_url = '';

                    if ($cause_page_id > 0) {
                        $image_url = get_the_post_thumbnail_url($cause_page_id, 'large');
                    }

                    if (!$image_url) {
                        $image_url = get_the_post_thumbnail_url($form_id, 'large');
                    }

                    $description_source = '';

                    if ($cause_page_id > 0) {
                        $description_source = get_post_field('post_excerpt', $cause_page_id);

                        if ('' === trim((string) $description_source)) {
                            $description_source = get_post_field('post_content', $cause_page_id);
                        }
                    }

                    if ('' === trim((string) $description_source)) {
                        $description_source = get_the_excerpt();
                    }

                    if ('' === trim((string) $description_source)) {
                        $description_source = get_the_content();
                    }

                    $description = wp_trim_words(wp_strip_all_tags((string) $description_source), 24, '...');
                    ?>
                    <article class="cause-archive-card">
                        <?php if ($image_url) : ?>
                            <img class="cause-archive-image" src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr(get_the_title()); ?>">
                        <?php else : ?>
                            <div class="cause-archive-placeholder" aria-hidden="true">❤</div>
                        <?php endif; ?>

                        <div class="cause-archive-body">
                            <h3 class="cause-archive-title"><?php the_title(); ?></h3>
                            <p class="cause-archive-desc"><?php echo esc_html($description); ?></p>

                            <p class="cause-archive-amounts"><?php echo esc_html($raised_text . ' raised of ' . $goal_text); ?></p>
                            <div class="cause-archive-progress" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="<?php echo esc_attr((string) round($progress_pct)); ?>">
                                <div class="cause-archive-progress-fill" style="width: <?php echo esc_attr((string) $progress_pct); ?>%;"></div>
                            </div>

                            <a href="<?php echo esc_url($cause_url); ?>" class="cause-archive-btn">Donate</a>
                        </div>
                    </article>
                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>
            <?php else : ?>
                <article class="cause-archive-card">
                    <div class="cause-archive-placeholder" aria-hidden="true">+</div>
                    <div class="cause-archive-body">
                        <h3 class="cause-archive-title">No Campaigns Yet</h3>
                        <p class="cause-archive-desc">Create your first GiveWP campaign form and it will appear automatically.</p>
                        <?php $new_campaign_url = function_exists('hope_humanity_get_givewp_admin_url') ? hope_humanity_get_givewp_admin_url('new_campaign') : admin_url('edit.php?post_type=give_forms&page=give-campaigns&new=campaign'); ?>
                        <a href="<?php echo esc_url($new_campaign_url); ?>" class="cause-archive-btn">Add Campaign Form</a>
                    </div>
                </article>
            <?php endif; ?>
        </div>
    </div>
</main>

<?php get_footer(); ?>
