<?php get_header(); ?>

<!-- HERO SECTION -->
<section class="hero">
    <div class="hero-inner">
        <span class="hero-tag">Making a Difference Since 2020</span>
        <h1>Bringing <span class="highlight">Hope</span> to Humanity</h1>
        <p>We work tirelessly to provide clean water, food aid, and support to orphans across communities in need.</p>
        <div class="hero-buttons">
            <a href="/donate" class="btn-primary">Donate Now</a>
            <a href="/our-causes" class="btn-secondary">Our Causes</a>
        </div>
    </div>
</section>

<!-- IMPACT STATS -->
<section class="stats">
    <div class="stats-inner">
        <div class="stat">
            <h2>5,000+</h2>
            <p>Lives Impacted</p>
        </div>
        <div class="stat">
            <h2>3</h2>
            <p>Active Causes</p>
        </div>
        <div class="stat">
            <h2>12+</h2>
            <p>Communities Served</p>
        </div>
        <div class="stat">
            <h2>98%</h2>
            <p>Funds to Programs</p>
        </div>
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
            <div class="cause-card">
                <div class="cause-icon">💧</div>
                <h3>Clean Water</h3>
                <p>Providing access to safe, clean drinking water to communities suffering from water scarcity.</p>
                <a href="/our-causes" class="cause-link">Donate →</a>
            </div>
            <div class="cause-card">
                <div class="cause-icon">🍽️</div>
                <h3>Food Aid</h3>
                <p>Delivering nutritious meals and food packages to families facing hunger and food insecurity.</p>
                <a href="/our-causes" class="cause-link">Donate →</a>
            </div>
            <div class="cause-card">
                <div class="cause-icon">🤝</div>
                <h3>Orphan Support</h3>
                <p>Supporting orphaned children with shelter, education, and the care they deserve.</p>
                <a href="/our-causes" class="cause-link">Donate →</a>
            </div>
        </div>
    </div>
</section>

<!-- CALL TO ACTION -->
<section class="cta">
    <div class="cta-inner">
        <h2>Ready to Make a Difference?</h2>
        <p>Your donation, no matter the size, changes lives forever.</p>
        <a href="/donate" class="btn-primary">Donate Now</a>
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
                <div class="gallery-overlay">
                    <span>Clean Water Project</span>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1532629345422-7515f3d16bb6?w=400&q=80" alt="Food aid distribution">
                <div class="gallery-overlay">
                    <span>Food Aid Programme</span>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1497486751825-1233686d5d80?w=400&q=80" alt="Children in school">
                <div class="gallery-overlay">
                    <span>Orphan Support</span>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1521017432531-fbd92d768814?w=400&q=80" alt="Community volunteers">
                <div class="gallery-overlay">
                    <span>Our Volunteers</span>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1509099836639-18ba1795216d?w=400&q=80" alt="Community outreach">
                <div class="gallery-overlay">
                    <span>Community Outreach</span>
                </div>
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
            $posts = wp_get_recent_posts([
                'numberposts' => 3,
                'post_status' => 'publish',
            ]);
            foreach ($posts as $post) :
            ?>
            <div class="blog-card">
                <div class="blog-card-body">
                    <span class="blog-date"><?php echo date('F j, Y', strtotime($post['post_date'])); ?></span>
                    <h3><?php echo $post['post_title']; ?></h3>
                    <p><?php echo wp_trim_words($post['post_content'], 20, '...'); ?></p>
                    <a href="<?php echo get_permalink($post['ID']); ?>" class="blog-link">Read More →</a>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
        <div style="text-align: center; margin-top: 2rem;">
            <a href="/news-updates/" class="btn-primary">View All News</a>
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
<?php get_footer(); ?>
