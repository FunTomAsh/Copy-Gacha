<?php
function enqueue_tailwind(){
    wp_enqueue_style('tailwindcss', get_template_directory_uri() . '/src/output.css', array(), '1.0', 'all');
    wp_enqueue_script('off-canvas-js', get_template_directory_uri() . '/off-canvas.js', NULL, '1.0', true);
    if (is_single() && has_category('characters')) { 
        wp_enqueue_script('character-scr-js', get_template_directory_uri() . '/character-scr.js', NULL, '1.0', true);
    }
    
}
add_action('wp_enqueue_scripts', 'enqueue_tailwind');

/*
function add_character_meta_boxes() {
    add_meta_box('character_meta', 'Character Details', 'render_character_meta_box', 'post', 'normal', 'high');
}
add_action('add_meta_boxes', 'add_character_meta_boxes');

function render_character_meta_box($post) {
    $tier = get_post_meta($post->ID, 'tier', true);
    $role = get_post_meta($post->ID, 'role', true);
    ?>
    <label>Tier Level:</label>
    <select name="tier">
        <option value="SSS" <?php selected($tier, 'SSS'); ?>>SSS</option>
        <option value="SS" <?php selected($tier, 'SS'); ?>>SS</option>
        <option value="S" <?php selected($tier, 'S'); ?>>S</option>
        <option value="A" <?php selected($tier, 'A'); ?>>A</option>
        <option value="B" <?php selected($tier, 'B'); ?>>B</option>
        <option value="C" <?php selected($tier, 'C'); ?>>C</option>
        <option value="D" <?php selected($tier, 'D'); ?>>D</option>
    </select>
    <br><br>

    <label>Role:</label>
    <select name="role">
        <option value="Attacker" <?php selected($role, 'Attacker'); ?>>Attacker</option>
        <option value="Supporter" <?php selected($role, 'Supporter'); ?>>Supporter</option>
        <option value="Defender" <?php selected($role, 'Defender'); ?>>Defender</option>
    </select>
    <br><br>

    <?php
}

function save_character_meta($post_id) {
    if (array_key_exists('tier', $_POST)) {
        update_post_meta($post_id, 'tier', $_POST['tier']);
    }
    if (array_key_exists('role', $_POST)) {
        update_post_meta($post_id, 'role', $_POST['role']);
    }
}
add_action('save_post', 'save_character_meta');
*/

function tier_level($tier){
    echo ('<div class="flex px-2 md:px-4 py-2 md:py-3 mb-2 bg-' . $tier . ' justify-center font-bold text-[20px] md:text-[24px] text-black cursor-pointer duration-700 hover:brightness-120">' . $tier . '</div>');
}

function enqueue_custom_styles() {
    wp_enqueue_style('custom-styles', get_stylesheet_directory_uri() . '/custom.css', array(), '1.0');
}
add_action('wp_enqueue_scripts', 'enqueue_custom_styles');

function adder(){
    add_theme_support('title-tag');  // adds the tag at the card
    add_theme_support('post-thumbnails'); //adds thumbnail after tag
    add_theme_support('appearance-tools');
}
add_action('after_setup_theme', 'adder');

set_post_thumbnail_size(300, 200, true);
add_image_size('Medium', 180, 246, true);

function register_custom_menu() {
    register_nav_menu('primary', __('Primary Menu', 'tailwind'));
}
add_action('after_setup_theme', 'register_custom_menu');


function check_for_category_single_template( $t )
{
  foreach( (array) get_the_category() as $cat ) 
  { 
    if ( file_exists(STYLESHEETPATH . "/single-category-{$cat->slug}.php") ) return STYLESHEETPATH . "/single-category-{$cat->slug}.php"; 
    if($cat->parent)
    {
      $cat = get_the_category_by_ID( $cat->parent );
      if ( file_exists(STYLESHEETPATH . "/single-category-{$cat->slug}.php") ) return STYLESHEETPATH . "/single-category-{$cat->slug}.php";
    }
  } 
  return $t;
}
add_filter('single_template', 'check_for_category_single_template');

function register_breadcrumb() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'breadcrumb',
            'title'             => __('Breadcrumb'),
            'description'       => __('A block with Breadcrumb.'),
            'render_template'   => get_template_directory() . '/blocks/breadcrumb-block.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'breadcrumb', 'section'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_breadcrumb');

function register_section_name() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'section_name',
            'title'             => __('Section Name'),
            'description'       => __('A block with the name for the section.'),
            'render_template'   => get_template_directory() . '/blocks/section-name-block.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'front_page', 'section'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_section_name');

function register_new_posts() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'new_posts',
            'title'             => __('New Posts'),
            'description'       => __('A block with the new posts.'),
            'render_template'   => get_template_directory() . '/blocks/new-posts-block.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'front_page', 'posts'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_new_posts');

function register_guides() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'guides',
            'title'             => __('Guides'),
            'description'       => __('A block with the guides.'),
            'render_template'   => get_template_directory() . '/blocks/guides-block.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'guides'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_guides');


function remove_duplicates($content) {
    if (is_single() && has_post_thumbnail()) {
        $post_thumbnail = get_the_post_thumbnail(get_the_ID(), 'large');
        $content = str_replace($post_thumbnail, '', $content);
    }
    return $content;
}
add_filter('the_content', 'remove_duplicates');

include_once(ABSPATH . 'wp-content/plugins/advanced-custom-fields-pro/acf.php');



