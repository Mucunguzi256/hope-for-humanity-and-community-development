<footer class="site-footer">
    <div class="footer-inner">
        <div class="footer-col">
            <?php if (has_custom_logo()) : ?>
                <div class="footer-logo">
                    <?php the_custom_logo(); ?>
                </div>
            <?php else : ?>
                <a href="<?php echo home_url(); ?>" class="footer-logo">
                    <img src="<?php echo esc_url(get_template_directory_uri() . '/images/hfhcd-logo.png'); ?>" alt="<?php bloginfo('name'); ?>" width="64" height="64">
                </a>
            <?php endif; ?>
            <p>Bringing hope and change to communities through clean water, food aid, and orphan support.</p>
        </div>
        <div class="footer-col">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="<?php echo home_url('/about-us'); ?>">About Us</a></li>
                <li><a href="<?php echo home_url('/our-causes'); ?>">Our Causes</a></li>
                <li><a href="<?php echo home_url('/donate'); ?>">Donate</a></li>
                <li><a href="<?php echo home_url('/contact-us'); ?>">Contact Us</a></li>
                <li><a href="<?php echo home_url('/news-updates'); ?>">News</a></li>
                <li><a href="<?php echo home_url('/branding'); ?>">Branding</a></li>
            </ul>
        </div>
        <div class="footer-col">
            <h3>Contact</h3>
            <p>📧 info@hopeforhumanity.org</p>
            <p>📞 +256 700 000 000</p>
            <p>📍 Kampala, Uganda</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; <?php echo date('Y'); ?> Hope for Humanity. All rights reserved.</p>
    </div>
</footer>
<?php wp_footer(); ?>
</body>
</html>
