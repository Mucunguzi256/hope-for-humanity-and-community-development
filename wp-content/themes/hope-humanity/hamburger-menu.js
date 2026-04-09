/**
 * Hamburger Menu Toggle
 * Handles mobile navigation menu open/close functionality
 */

document.addEventListener('DOMContentLoaded', function() {
    const hamburgerMenu = document.getElementById('hamburger-menu');
    const mobileMenu = document.getElementById('mobile-menu');
    const mobileMenuBackdrop = document.getElementById('mobile-menu-backdrop');

    if (!hamburgerMenu || !mobileMenu) {
        console.warn('Hamburger menu elements not found');
        return;
    }

    /**
     * Toggle the mobile menu visibility
     */
    function toggleMenu() {
        const isActive = hamburgerMenu.classList.contains('active');

        if (isActive) {
            closeMenu();
        } else {
            openMenu();
        }
    }

    /**
     * Open the mobile menu
     */
    function openMenu() {
        hamburgerMenu.classList.add('active');
        mobileMenu.classList.add('active');
        mobileMenuBackdrop.classList.add('active');
        document.body.style.overflow = 'hidden';
    }

    /**
     * Close the mobile menu
     */
    function closeMenu() {
        hamburgerMenu.classList.remove('active');
        mobileMenu.classList.remove('active');
        mobileMenuBackdrop.classList.remove('active');
        document.body.style.overflow = '';
    }

    // Hamburger button click handler
    hamburgerMenu.addEventListener('click', toggleMenu);

    // Close menu when backdrop is clicked
    mobileMenuBackdrop.addEventListener('click', closeMenu);

    // Close menu when a link is clicked
    const mobileMenuLinks = mobileMenu.querySelectorAll('a');
    mobileMenuLinks.forEach(link => {
        link.addEventListener('click', function(e) {
            // Don't close if it's the donate button (it opens a new page/section)
            if (!this.classList.contains('donate-btn')) {
                closeMenu();
            }
        });
    });

    // Close menu on escape key
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape') {
            closeMenu();
        }
    });

    // Close menu when window is resized above mobile breakpoint
    window.addEventListener('resize', function() {
        if (window.innerWidth > 900) {
            closeMenu();
        }
    });
});
