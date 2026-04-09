<?php
function hope_humanity_setup() {
    register_nav_menus([
        'primary' => __('Primary Menu', 'hope-humanity'),
    ]);
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_theme_support('html5', ['search-form', 'comment-form', 'gallery']);
    add_theme_support('custom-logo', [
        'height'      => 120,
        'width'       => 360,
        'flex-height' => true,
        'flex-width'  => true,
    ]);
    add_theme_support('site-icon');
}
add_action('after_setup_theme', 'hope_humanity_setup');

function hope_humanity_styles() {
    $theme = wp_get_theme();

    wp_enqueue_style(
        'hope-humanity-style',
        get_template_directory_uri() . '/style.css',
        [],
        $theme->get('Version')
    );
}
add_action('wp_enqueue_scripts', 'hope_humanity_styles');

function hope_humanity_scripts() {
    $theme = wp_get_theme();

    wp_enqueue_script(
        'hope-humanity-hamburger-menu',
        get_template_directory_uri() . '/hamburger-menu.js',
        [],
        $theme->get('Version'),
        true
    );
}
add_action('wp_enqueue_scripts', 'hope_humanity_scripts');

function hope_humanity_add_favicon() {
    $logo_url = esc_url(get_template_directory_uri() . '/images/hfhcd-logo.png');
    echo '<link rel="icon" type="image/png" href="' . $logo_url . '" />' . PHP_EOL;
    echo '<link rel="apple-touch-icon" href="' . $logo_url . '" />' . PHP_EOL;
}
add_action('wp_head', 'hope_humanity_add_favicon');

function hope_humanity_admin_logo() {
    $logo_url = esc_url(get_template_directory_uri() . '/images/hfhcd-logo.png');
    ?>
    <style>
        #wpadminbar .ab-item img {
            width: auto !important;
            height: 28px !important;
        }
        .wp-admin #wpadminbar #wp-admin-bar-wp-logo > .ab-item .ab-icon::before {
            background-image: url('<?php echo $logo_url; ?>') !important;
            background-size: contain !important;
            background-repeat: no-repeat !important;
            background-position: center !important;
        }
    </style>
    <?php
}
add_action('admin_head', 'hope_humanity_admin_logo');

function hope_humanity_get_givewp_admin_url($target = 'campaigns') {
    switch ($target) {
        case 'new_campaign':
            return admin_url('edit.php?post_type=give_forms&page=give-campaigns&new=campaign');
        case 'donations':
            return admin_url('edit.php?post_type=give_forms&page=give-payment-history');
        case 'donors':
            return admin_url('edit.php?post_type=give_forms&page=give-donors');
        case 'reports':
            return admin_url('edit.php?post_type=give_forms&page=give-reports');
        case 'settings':
            return admin_url('edit.php?post_type=give_forms&page=give-settings');
        case 'tools':
            return admin_url('edit.php?post_type=give_forms&page=give-tools');
        case 'addons':
            return admin_url('edit.php?post_type=give_forms&page=give-addons');
        case 'setup':
            return admin_url('edit.php?post_type=give_forms&page=give-setup');
        case 'scheduled_actions':
            return admin_url('tools.php?page=action-scheduler');
        case 'campaigns':
        default:
            return admin_url('edit.php?post_type=give_forms&page=give-campaigns');
    }
}

function hope_humanity_count_past_due_actions() {
    global $wpdb;

    $table_name = $wpdb->prefix . 'actionscheduler_actions';
    $table      = $wpdb->get_var($wpdb->prepare('SHOW TABLES LIKE %s', $table_name));

    if ($table_name !== $table) {
        return 0;
    }

    return (int) $wpdb->get_var(
        $wpdb->prepare(
            "SELECT COUNT(action_id) FROM {$table_name} WHERE status = %s AND scheduled_date_gmt <= UTC_TIMESTAMP()",
            'pending'
        )
    );
}

function hope_humanity_redirect_legacy_givewp_admin_views() {
    if (!is_admin() || !post_type_exists('give_forms')) {
        return;
    }

    $post_type = isset($_GET['post_type']) ? sanitize_key(wp_unslash($_GET['post_type'])) : '';
    $page      = isset($_GET['page']) ? sanitize_key(wp_unslash($_GET['page'])) : '';

    if ('post-new.php' === $GLOBALS['pagenow'] && 'give_forms' === $post_type) {
        wp_safe_redirect(hope_humanity_get_givewp_admin_url('new_campaign'));
        exit;
    }

    if ('edit.php' === $GLOBALS['pagenow'] && 'give_forms' === $post_type && '' === $page) {
        wp_safe_redirect(hope_humanity_get_givewp_admin_url('campaigns'));
        exit;
    }
}
add_action('admin_init', 'hope_humanity_redirect_legacy_givewp_admin_views', 1);

function hope_humanity_customize_dashboard() {
    remove_meta_box('dashboard_right_now', 'dashboard', 'normal');
    remove_meta_box('dashboard_quick_press', 'dashboard', 'side');
    remove_meta_box('dashboard_primary', 'dashboard', 'side');
    remove_meta_box('dashboard_site_health', 'dashboard', 'normal');

    wp_add_dashboard_widget(
        'hope_humanity_dashboard_glance',
        __('At a Glance', 'hope-humanity'),
        'hope_humanity_dashboard_glance_content'
    );

    wp_add_dashboard_widget(
        'hope_humanity_dashboard_widget',
        __('Hope for Humanity Quick Actions', 'hope-humanity'),
        'hope_humanity_dashboard_widget_content'
    );
}
add_action('wp_dashboard_setup', 'hope_humanity_customize_dashboard');

function hope_humanity_dashboard_glance_content() {
    $forms_count = (int) wp_count_posts('give_forms')->publish;
    $donations   = wp_count_posts('give_payment');
    $donation_count = 0;

    if ($donations instanceof stdClass) {
        foreach ($donations as $status => $count) {
            if ('trash' === $status || 'auto-draft' === $status) {
                continue;
            }

            $donation_count += (int) $count;
        }
    }

    echo '<ul>';
    echo '<li>' . esc_html(sprintf(_n('%d Campaign Form', '%d Campaign Forms', $forms_count, 'hope-humanity'), $forms_count)) . '</li>';
    echo '<li>' . esc_html(sprintf(_n('%d Donation Record', '%d Donation Records', $donation_count, 'hope-humanity'), $donation_count)) . '</li>';
    echo '<li>' . esc_html__('Theme: Hope for Humanity', 'hope-humanity') . '</li>';
    echo '</ul>';
}

function hope_humanity_dashboard_widget_content() {
    $past_due_actions = hope_humanity_count_past_due_actions();

    echo '<p>' . esc_html__('Use these shortcuts to manage campaigns and site branding quickly.', 'hope-humanity') . '</p>';

    if ($past_due_actions > 0) {
        $run_actions_url = wp_nonce_url(
            admin_url('admin-post.php?action=hope_humanity_run_due_actions'),
            'hope_humanity_run_due_actions'
        );

        echo '<p><strong>' . esc_html(sprintf(_n('%d action is past due.', '%d actions are past due.', $past_due_actions, 'hope-humanity'), $past_due_actions)) . '</strong> ';
        echo '<a href="' . esc_url(hope_humanity_get_givewp_admin_url('scheduled_actions')) . '">' . esc_html__('Review Scheduled Actions', 'hope-humanity') . '</a> | ';
        echo '<a href="' . esc_url($run_actions_url) . '">' . esc_html__('Run Due Actions Now', 'hope-humanity') . '</a></p>';
    }

    echo '<ul>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('campaigns')) . '">' . esc_html__('Manage Campaigns', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('new_campaign')) . '">' . esc_html__('Add New Campaign (Builder)', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('donations')) . '">' . esc_html__('View Donations', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('donors')) . '">' . esc_html__('View Donors', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('reports')) . '">' . esc_html__('View Reports', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('settings')) . '">' . esc_html__('GiveWP Settings', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('tools')) . '">' . esc_html__('GiveWP Tools', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('addons')) . '">' . esc_html__('GiveWP Add-ons', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('setup')) . '">' . esc_html__('GiveWP Setup', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(hope_humanity_get_givewp_admin_url('scheduled_actions')) . '">' . esc_html__('Scheduled Actions', 'hope-humanity') . '</a></li>';
    echo '<li><a href="' . esc_url(admin_url('customize.php?autofocus[section]=title_tagline')) . '">' . esc_html__('Update Logo and Favicon', 'hope-humanity') . '</a></li>';
    echo '</ul>';
}

function hope_humanity_run_due_actions() {
    if (!current_user_can('manage_options')) {
        wp_die(esc_html__('You do not have permission to run this action.', 'hope-humanity'));
    }

    check_admin_referer('hope_humanity_run_due_actions');

    /**
     * Trigger the Action Scheduler queue runner once from a trusted admin action.
     */
    do_action('action_scheduler_run_queue', 'hope_humanity_manual_run');

    $redirect_url = wp_get_referer() ? wp_get_referer() : admin_url('index.php');
    $redirect_url = add_query_arg('hope_actions_ran', '1', $redirect_url);

    wp_safe_redirect($redirect_url);
    exit;
}
add_action('admin_post_hope_humanity_run_due_actions', 'hope_humanity_run_due_actions');

function hope_humanity_actions_ran_notice() {
    if (!is_admin() || !current_user_can('manage_options')) {
        return;
    }

    $actions_ran = isset($_GET['hope_actions_ran']) ? sanitize_key(wp_unslash($_GET['hope_actions_ran'])) : '';

    if ('1' !== $actions_ran) {
        return;
    }

    echo '<div class="notice notice-success is-dismissible"><p>' . esc_html__('Scheduled actions queue run was triggered. Refresh in a few moments and re-check the past-due count.', 'hope-humanity') . '</p></div>';
}
add_action('admin_notices', 'hope_humanity_actions_ran_notice');

function hope_humanity_relabel_givewp_admin_menu() {
    global $menu;
    global $submenu;

    $menu_slug  = 'edit.php?post_type=give_forms';
    $menu_label = __('Donations Hub', 'hope-humanity');

    foreach ($menu as $index => $item) {
        if (!isset($item[2]) || $menu_slug !== $item[2]) {
            continue;
        }

        $menu[$index][0] = $menu_label;
        break;
    }

    if (!empty($submenu[$menu_slug][0][0])) {
        $submenu[$menu_slug][0][0] = $menu_label;
    }
}
add_action('admin_menu', 'hope_humanity_relabel_givewp_admin_menu', 999);

function hope_humanity_hide_wp_logo_admin_bar($wp_admin_bar) {
    if (!is_admin()) {
        return;
    }

    $wp_admin_bar->remove_node('wp-logo');
}
add_action('admin_bar_menu', 'hope_humanity_hide_wp_logo_admin_bar', 999);

function hope_humanity_physical_donation_notice_html() {
    return '<div class="hope-physical-donation-note"><strong>' . esc_html__('Bank Deposit or Cheque Only', 'hope-humanity') . '</strong><p>' . esc_html__('Online card and mobile payments are currently disabled. Please submit this form to notify us of your pledge, then complete your donation via bank deposit or cheque as instructed by our team.', 'hope-humanity') . '</p></div>';
}

function hope_humanity_prepend_physical_donation_notice($content) {
    if (is_admin()) {
        return $content;
    }

    $is_give_form_page = is_singular('give_forms');
    $has_give_shortcode = has_shortcode($content, 'give_form');
    $has_give_block     = false !== strpos($content, 'wp:givewp/donation-form');

    if (!$is_give_form_page && !$has_give_shortcode && !$has_give_block) {
        return $content;
    }

    return hope_humanity_physical_donation_notice_html() . $content;
}
add_filter('the_content', 'hope_humanity_prepend_physical_donation_notice', 9);

function hope_humanity_force_offline_donation_gateway($gateways) {
    if (is_admin() && !wp_doing_ajax()) {
        return $gateways;
    }

    if (isset($gateways['offline-donation'])) {
        return ['offline-donation' => $gateways['offline-donation']];
    }

    return $gateways;
}
add_filter('give_enabled_payment_gateways', 'hope_humanity_force_offline_donation_gateway', 50);

function hope_humanity_set_default_offline_gateway($default_gateway) {
    return 'offline-donation';
}
add_filter('give_default_gateway', 'hope_humanity_set_default_offline_gateway');

function hope_humanity_add_campaign_id_column($columns) {
    $updated_columns = [];

    foreach ($columns as $key => $label) {
        $updated_columns[$key] = $label;

        if ('title' === $key) {
            $updated_columns['hope_campaign_id'] = __('Campaign ID', 'hope-humanity');
        }
    }

    if (!isset($updated_columns['hope_campaign_id'])) {
        $updated_columns['hope_campaign_id'] = __('Campaign ID', 'hope-humanity');
    }

    return $updated_columns;
}
add_filter('manage_give_forms_posts_columns', 'hope_humanity_add_campaign_id_column');

function hope_humanity_render_campaign_id_column($column, $post_id) {
    if ('hope_campaign_id' !== $column) {
        return;
    }

    echo '<code>#' . esc_html((string) $post_id) . '</code>';
}
add_action('manage_give_forms_posts_custom_column', 'hope_humanity_render_campaign_id_column', 10, 2);

function hope_humanity_dynamic_causes_menu($items, $menu, $args) {
    if (!post_type_exists('give_forms') || $menu->name !== 'Header Menu') {
        return $items;
    }

    $our_causes_item = null;
    $our_causes_index = -1;

    foreach ($items as $index => $item) {
        if (isset($item->title) && strtolower($item->title) === 'our causes' && $item->menu_item_parent == 0) {
            $our_causes_item = $item;
            $our_causes_index = $index;
            break;
        }
    }

    if (!$our_causes_item) {
        return $items;
    }

    $causes_query = new WP_Query([
        'post_type'      => 'give_forms',
        'post_status'    => 'publish',
        'posts_per_page' => -1,
        'orderby'        => 'date',
        'order'          => 'DESC',
    ]);

    $new_items = $items;

    if ($causes_query->have_posts()) {
        while ($causes_query->have_posts()) {
            $causes_query->the_post();
            $cause_id = get_the_ID();

            $cause_item = (object)[
                'ID'              => 'dynamic-cause-' . $cause_id,
                'post_name'       => 'dynamic-cause-' . $cause_id,
                'post_parent'     => $our_causes_item->ID,
                'menu_item_parent'=> $our_causes_item->ID,
                'object_id'       => $cause_id,
                'object'          => 'post',
                'type'            => 'post_type',
                'type_label'      => 'GiveWP Campaign',
                'title'           => get_the_title(),
                'url'             => get_permalink(),
                'description'     => '',
                'attr_title'      => '',
                'target'          => '',
                'classes'         => ['menu-item', 'menu-item-type-post_type', 'menu-item-object-give_forms'],
                'xfn'             => '',
                'current'         => false,
                'current_item_ancestor' => false,
                'current_item_parent' => false,
                'level'           => 1,
            ];

            $new_items[] = $cause_item;
        }
        wp_reset_postdata();
    }

    return $new_items;
}
add_filter('wp_nav_menu_objects', 'hope_humanity_dynamic_causes_menu', 10, 3);

function hope_humanity_hide_welcome_panel() {
    $user_id = get_current_user_id();

    if ($user_id) {
        update_user_meta($user_id, 'show_welcome_panel', 0);
    }
}
add_action('admin_init', 'hope_humanity_hide_welcome_panel');

function hope_humanity_admin_footer_text() {
    return esc_html__('Hope for Humanity Admin Dashboard', 'hope-humanity');
}
add_filter('admin_footer_text', 'hope_humanity_admin_footer_text', 20);
add_filter('update_footer', '__return_empty_string', 20);

/**
 * Set up favicon and site icon
 * Outputs favicon links in the <head> and configures for wp-admin
 */
function hope_humanity_favicon_setup() {
    $favicon_url = get_template_directory_uri() . '/images/favicon.svg';

    // Add favicon links to head
    echo '<link rel="icon" type="image/svg+xml" href="' . esc_url($favicon_url) . '">' . "\n";
    echo '<link rel="shortcut icon" href="' . esc_url($favicon_url) . '">' . "\n";
    echo '<link rel="apple-touch-icon" href="' . esc_url($favicon_url) . '">' . "\n";
}
add_action('wp_head', 'hope_humanity_favicon_setup', 5);
add_action('admin_head', 'hope_humanity_favicon_setup', 5);
add_action('login_head', 'hope_humanity_favicon_setup', 5);

/**
 * Custom CSS for wp-admin login page with logo
 */
function hope_humanity_login_logo_css() {
    echo '<style>
        .login h1 a {
            background-image: url(' . esc_url(get_template_directory_uri() . '/images/favicon.svg') . ');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            width: 100%;
            height: 120px;
            display: block;
        }
        .login h1 a:hover,
        .login h1 a:focus {
            border-color: #2E7D32;
        }
    </style>' . "\n";
}
add_action('login_head', 'hope_humanity_login_logo_css', 10);

/**
 * Add logo to wp-admin header/menu bar
 */
function hope_humanity_admin_logo_css() {
    echo '<style>
        #adminmenu:before {
            content: "";
            display: block;
            height: 60px;
            background-image: url(' . esc_url(get_template_directory_uri() . '/images/favicon.svg') . ');
            background-size: 40px 40px;
            background-repeat: no-repeat;
            background-position: center;
            margin: 10px 0;
            border-bottom: 1px solid #2E7D32;
        }
    </style>' . "\n";
}
add_action('admin_head', 'hope_humanity_admin_logo_css', 10);
