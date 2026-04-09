<?php get_header(); ?>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">

<style>
.hero-layout {
    display: grid;
    grid-template-columns: minmax(0, 1fr) minmax(260px, 360px);
    gap: clamp(1rem, 2.5vw, 2.4rem);
    align-items: end;
}

.hero-copy {
    max-width: 760px;
}

.hero-cta-wrap {
    justify-self: end;
    align-self: center;
}

.hero .hero-inner {
    max-width: 1200px;
    position: relative;
    z-index: 2;
}

.hero .hero-copy {
    text-align: left;
}

.hero .hero-copy p {
    max-width: 640px;
    margin-left: 0;
    margin-right: 0;
    margin-bottom: 2rem;
}

.hero .hero-buttons {
    justify-content: flex-start;
}

.hero-qurban-cta {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    min-height: 44px;
    padding: 0.9rem 1.2rem;
    border-radius: 999px;
    text-decoration: none;
    color: #0a2b4e;
    font-weight: 700;
    font-size: 0.95rem;
    line-height: 1.25;
    text-align: center;
    white-space: normal;
    background: linear-gradient(135deg, #ffd166, #ff9f1c);
    box-shadow: 0 0 0 0 rgba(255, 209, 102, 0.55), 0 12px 24px rgba(255, 159, 28, 0.35);
    animation: pulse 1.5s ease-in-out infinite;
}

.hero-qurban-cta:hover {
    filter: brightness(1.02);
}

.hero-qurban-cta strong {
    font-weight: 800;
}

@keyframes pulse {
    0%,
    100% {
        opacity: 0.92;
        box-shadow: 0 0 0 0 rgba(255, 209, 102, 0.45), 0 12px 24px rgba(255, 159, 28, 0.3);
    }
    50% {
        opacity: 1;
        box-shadow: 0 0 0 10px rgba(255, 209, 102, 0.14), 0 14px 28px rgba(255, 159, 28, 0.38);
    }
}

.causes-carousel-wrap {
    position: relative;
}

.causes-swiper {
    padding: 0.3rem 0.2rem 2.8rem;
}

.causes-swiper .swiper-slide {
    height: auto;
}

.causes-swiper .cause-archive-card {
    height: 100%;
}

.causes-swiper .cause-archive-card {
    background: #ffffff;
    border-radius: 16px;
    box-shadow: 0 10px 26px rgba(17, 24, 39, 0.08);
    border: 1px solid rgba(46, 125, 50, 0.12);
    overflow: hidden;
    transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.causes-swiper .cause-archive-card:hover {
    transform: translateY(-4px);
    box-shadow: 0 16px 30px rgba(17, 24, 39, 0.12);
}

.causes-swiper .cause-archive-image {
    width: 100%;
    height: 220px;
    object-fit: cover;
    display: block;
}

.causes-swiper .cause-archive-placeholder {
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

.causes-swiper .cause-archive-body {
    padding: 1.1rem 1.1rem 1.25rem;
}

.causes-swiper .cause-archive-title {
    margin: 0 0 0.45rem;
    color: #1f2937;
    font-size: 1.35rem;
    line-height: 1.2;
}

.causes-swiper .cause-archive-desc {
    color: #4b5563;
    margin: 0 0 0.9rem;
    line-height: 1.55;
    min-height: 3.2rem;
}

.causes-swiper .cause-archive-amounts {
    margin: 0 0 0.55rem;
    color: #2d3748;
    font-size: 0.92rem;
    font-weight: 600;
}

.causes-swiper .cause-archive-progress {
    width: 100%;
    height: 8px;
    border-radius: 999px;
    background: #e5e7eb;
    overflow: hidden;
    margin-bottom: 1rem;
}

.causes-swiper .cause-archive-progress-fill {
    height: 100%;
    background: #66bb6a;
    border-radius: 999px;
}

.causes-swiper .cause-archive-btn {
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

.causes-swiper .cause-archive-btn:hover {
    transform: scale(1.02);
}

.causes-swiper .swiper-button-next,
.causes-swiper .swiper-button-prev {
    color: #2e7d32;
    background: #fff;
    border: 1px solid rgba(46, 125, 50, 0.18);
    width: 42px;
    height: 42px;
    border-radius: 999px;
    box-shadow: 0 10px 24px rgba(15, 30, 50, 0.1);
}

.causes-swiper .swiper-button-next::after,
.causes-swiper .swiper-button-prev::after {
    font-size: 14px;
    font-weight: 700;
}

.causes-swiper .swiper-pagination-bullet {
    background: #66bb6a;
    opacity: 0.5;
}

.causes-swiper .swiper-pagination-bullet-active {
    opacity: 1;
    background: #2e7d32;
}

@media (max-width: 768px) {
    .hero-layout {
        grid-template-columns: 1fr;
        align-items: start;
    }

    .hero-cta-wrap {
        justify-self: center;
        width: 100%;
        margin-top: 0.35rem;
    }

    .hero .hero-copy {
        text-align: center;
    }

    .hero .hero-copy p {
        margin-left: auto;
        margin-right: auto;
    }

    .hero .hero-buttons {
        justify-content: center;
    }

    .hero-qurban-cta {
        display: flex;
        justify-content: center;
        width: 100%;
        max-width: 520px;
    }
}
</style>

<!-- HERO SECTION -->
<section class="hero">
    <div class="hero-inner">
        <div class="hero-layout">
            <div class="hero-copy">
                <span class="hero-tag">Making a Difference Since 2020</span>
                <h1>Bringing <span class="highlight">Hope</span> to Humanity</h1>
                <p>We work tirelessly to provide clean water, food aid, and support to orphans across communities in need.</p>
                <div class="hero-buttons">
                    <a href="<?php echo home_url('/our-causes/'); ?>" class="btn-primary">Donate Now</a>
                    <a href="<?php echo home_url('/our-causes'); ?>" class="btn-secondary">Our Causes</a>
                </div>
            </div>

            <div class="hero-cta-wrap">
                <a href="<?php echo esc_url(home_url('/qurban-2/')); ?>" class="hero-qurban-cta">
                    <strong>Support Qurban</strong> Help families in need. Donate now →
                </a>
            </div>
        </div>
    </div>
</section>

<!-- IMPACT STATS -->
<section class="stats">
    <div class="stats-inner">
        <?php
        $campaign_count = post_type_exists('give_forms')
            ? (int) wp_count_posts('give_forms')->publish
            : 0;
        ?>
        <div class="stat"><h2>5,000+</h2><p>Lives Impacted</p></div>
        <div class="stat"><h2><?php echo esc_html($campaign_count); ?></h2><p>Active Causes</p></div>
        <div class="stat"><h2>12+</h2><p>Communities Served</p></div>
        <div class="stat"><h2>98%</h2><p>Funds to Programs</p></div>
    </div>
</section>

<!-- CAUSES SECTION -->
<section class="causes">
    <div class="section-inner">
        <div class="section-header">
            <h2>Our Causes</h2>
            <p>Every donation goes directly to those who need it most.</p>
        </div>
        <div class="causes-carousel-wrap">
            <div class="swiper causes-swiper">
                <div class="swiper-wrapper">
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
                    $form_id       = (int) get_the_ID();
                    $cause_url     = function_exists('hope_humanity_get_cause_url') ? hope_humanity_get_cause_url($form_id) : get_permalink($form_id);
                    $cause_page_id = function_exists('hope_humanity_get_campaign_page_id_from_form') ? (int) hope_humanity_get_campaign_page_id_from_form($form_id) : 0;
                    $goal_raw      = function_exists('give_get_meta') ? (float) give_get_meta($form_id, '_give_set_goal', true) : (float) get_post_meta($form_id, '_give_set_goal', true);
                    $raised_raw    = function_exists('give_get_form_earnings_stats') ? (float) give_get_form_earnings_stats($form_id) : 0.0;
                    $progress_pct  = ($goal_raw > 0) ? min(100, ($raised_raw / $goal_raw) * 100) : 0;

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
                    <article class="swiper-slide cause-archive-card">
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
                <article class="swiper-slide cause-archive-card">
                    <div class="cause-archive-placeholder" aria-hidden="true">+</div>
                    <div class="cause-archive-body">
                        <h3 class="cause-archive-title">Create Your First Campaign</h3>
                        <p class="cause-archive-desc">Add GiveWP campaign forms from your dashboard and they will automatically appear here.</p>
                        <?php
                        $new_campaign_url = function_exists('hope_humanity_get_givewp_admin_url')
                            ? hope_humanity_get_givewp_admin_url('new_campaign')
                            : admin_url('edit.php?post_type=give_forms&page=give-campaigns&new=campaign');
                        ?>
                        <a href="<?php echo esc_url($new_campaign_url); ?>" class="cause-archive-btn">Add Campaign Form</a>
                    </div>
                </article>
            <?php endif; ?>
                </div>

                <div class="swiper-button-prev" aria-label="Previous causes"></div>
                <div class="swiper-button-next" aria-label="Next causes"></div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>
</section>

<!-- GALLERY SECTION -->
<section class="gallery">
    <div class="section-inner">
        <div class="section-header">
            <h2>Our Work in Action</h2>
            <p>Real moments from the communities we serve.</p>
        </div>
        <div class="gallery-grid">
            <div class="gallery-item gallery-item--large">
                <img src="https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?w=800&q=80" alt="Children getting clean water">
                <div class="gallery-overlay"><span>Clean Water Project</span></div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1532629345422-7515f3d16bb6?w=400&q=80" alt="Food aid distribution">
                <div class="gallery-overlay"><span>Food Aid Programme</span></div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1497486751825-1233686d5d80?w=400&q=80" alt="Children in school">
                <div class="gallery-overlay"><span>Orphan Support</span></div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=400&q=80" alt="Community volunteers">
                <div class="gallery-overlay"><span>Our Volunteers</span></div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1509099836639-18ba1795216d?w=400&q=80" alt="Community outreach">
                <div class="gallery-overlay"><span>Community Outreach</span></div>
            </div>
        </div>
    </div>
</section>

<!-- BLOG SECTION -->
<section class="blog-preview">
    <div class="section-inner">
        <div class="section-header">
            <h2>News & Updates</h2>
            <p>Stay up to date with our latest work and impact stories.</p>
        </div>
        <div class="blog-grid">
            <?php
            $recent_posts = wp_get_recent_posts([
                'numberposts' => 3,
                'post_status' => 'publish',
                'post_type'   => 'post',
            ]);
            foreach ($recent_posts as $recent_post) :
            ?>
            <div class="blog-card">
                <div class="blog-card-body">
                    <span class="blog-date"><?php echo date('F j, Y', strtotime($recent_post['post_date'])); ?></span>
                    <h3><?php echo esc_html($recent_post['post_title']); ?></h3>
                    <p><?php echo wp_trim_words($recent_post['post_content'], 20, '...'); ?></p>
                    <a href="<?php echo get_permalink($recent_post['ID']); ?>" class="blog-link">Read More →</a>
                </div>
            </div>
            <?php endforeach; wp_reset_postdata(); ?>
        </div>
        <div style="text-align: center; margin-top: 2rem;">
            <a href="<?php echo home_url('/news-updates'); ?>" class="btn-primary">View All News</a>
        </div>
    </div>
</section>

<!-- TESTIMONIALS SECTION -->
<section class="testimonials">
    <div class="section-inner">
        <div class="section-header">
            <h2>Stories of Hope</h2>
            <p>Hear from the communities we serve and the donors who make it possible.</p>
        </div>
        <div class="testimonials-grid">
            <div class="testimonial-card">
                <div class="testimonial-quote">❝</div>
                <p>"Thanks to Hope for Humanity, our village now has clean water. Our children no longer fall sick from waterborne diseases. This has truly changed our lives."</p>
                <div class="testimonial-author">
                    <div class="testimonial-avatar">A</div>
                    <div>
                        <strong>Amina Nakato</strong>
                        <span>Clean Water Beneficiary, Wakiso</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-quote">❝</div>
                <p>"I donated to the Food Aid programme and was amazed at how transparent they are. I could see exactly where my money went. I donate every month now."</p>
                <div class="testimonial-author">
                    <div class="testimonial-avatar">J</div>
                    <div>
                        <strong>James Okello</strong>
                        <span>Monthly Donor, Kampala</span>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-quote">❝</div>
                <p>"The orphan support program gave me a second chance at life. I now have shelter, food, and I am back in school. I am so grateful for this organization."</p>
                <div class="testimonial-author">
                    <div class="testimonial-avatar">D</div>
                    <div>
                        <strong>David Mugisha</strong>
                        <span>Orphan Support Beneficiary</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- CALL TO ACTION -->
<section class="cta">
    <div class="cta-inner">
        <h2>Ready to Make a Difference?</h2>
        <p>Your donation, no matter the size, changes lives forever.</p>
        <a href="<?php echo home_url('/our-causes/'); ?>" class="btn-primary">Donate Now</a>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function () {
    const causesSwiperEl = document.querySelector('.causes-swiper');

    if (!causesSwiperEl || typeof Swiper === 'undefined') {
        return;
    }

    new Swiper(causesSwiperEl, {
        slidesPerView: 1,
        spaceBetween: 24,
        speed: 300,
        loop: true,
        grabCursor: true,
        autoplay: {
            delay: 4000,
            disableOnInteraction: false,
            pauseOnMouseEnter: true
        },
        navigation: {
            nextEl: '.causes-swiper .swiper-button-next',
            prevEl: '.causes-swiper .swiper-button-prev'
        },
        pagination: {
            el: '.causes-swiper .swiper-pagination',
            clickable: true
        },
        breakpoints: {
            768: {
                slidesPerView: 2
            },
            1024: {
                slidesPerView: 3
            }
        }
    });
});
</script>

<?php get_footer(); ?>
