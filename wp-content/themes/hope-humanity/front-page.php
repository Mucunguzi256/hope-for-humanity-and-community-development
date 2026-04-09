<?php get_header(); ?>

<!-- HERO SECTION -->
<section class="hero">
    <div class="hero-inner">
        <span class="hero-tag">Making a Difference Since 2020</span>
        <h1>Bringing <span class="highlight">Hope</span> to Humanity</h1>
        <p>We work tirelessly to provide clean water, food aid, and support to orphans across communities in need.</p>
        <div class="hero-buttons">
            <a href="<?php echo home_url('/donate'); ?>" class="btn-primary">Donate Now</a>
            <a href="<?php echo home_url('/our-causes'); ?>" class="btn-secondary">Our Causes</a>
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
        <div class="causes-grid">
            <?php
            $campaigns_query = post_type_exists('give_forms') ? new WP_Query([
                'post_type'      => 'give_forms',
                'post_status'    => 'publish',
                'posts_per_page' => 3,
                'orderby'        => 'date',
                'order'          => 'DESC',
            ]) : null;
            ?>

            <?php if ($campaigns_query && $campaigns_query->have_posts()) : ?>
                <?php while ($campaigns_query->have_posts()) : $campaigns_query->the_post(); ?>
                    <article class="cause-card">
                        <?php if (has_post_thumbnail()) : ?>
                            <div class="cause-thumb-wrap"><?php the_post_thumbnail('medium', ['class' => 'cause-thumb', 'loading' => 'lazy']); ?></div>
                        <?php else : ?>
                            <div class="cause-icon" aria-hidden="true">❤</div>
                        <?php endif; ?>
                        <h3><?php the_title(); ?></h3>
                        <p><?php echo esc_html(wp_trim_words(get_the_excerpt() ?: get_the_content(), 20, '...')); ?></p>
                        <?php $cause_url = function_exists('hope_humanity_get_cause_url') ? hope_humanity_get_cause_url(get_the_ID()) : get_permalink(); ?>
                        <a href="<?php echo esc_url($cause_url); ?>" class="cause-link">Donate to This Cause →</a>
                        <small class="cause-id">Form ID: <?php echo esc_html(get_the_ID()); ?></small>
                    </article>
                <?php endwhile; ?>
                <?php wp_reset_postdata(); ?>
            <?php else : ?>
                <article class="cause-card">
                    <div class="cause-icon" aria-hidden="true">+</div>
                    <h3>Create Your First Campaign</h3>
                    <p>Add GiveWP campaign forms from your dashboard and they will automatically appear here.</p>
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
        <a href="<?php echo home_url('/donate'); ?>" class="btn-primary">Donate Now</a>
    </div>
</section>

<?php get_footer(); ?>
