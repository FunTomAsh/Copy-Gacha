<?php
function enqueue_tailwind(){
    wp_enqueue_style('tailwindcss', get_template_directory_uri() . '/src/output.css', array(), '1.0', 'all');
    wp_enqueue_script('off-canvas-js', get_template_directory_uri() . '/off-canvas.js', NULL, '1.0', true);
    //wp_enqueue_script('char-popout-js', get_template_directory_uri() . '/char-popout.js', NULL, '1.0', true);
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
    echo ('<div class="flex px-2 md:px-4 py-2 md:py-3 mb-2 bg-' . esc_html($tier) . ' justify-center font-bold text-[20px] md:text-[24px] text-black cursor-pointer duration-700 hover:brightness-120">' . $tier . '</div>');
}

function get_cube($cube_name){
    echo ('<div class="flex items-center justify-start">');

    $cube_icons = [
        "Adjutant Cube"   => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Resilience Cube" => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Bastion Cube"    => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Tempering Cube"  => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Wingman Cube"    => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Assault Cube"    => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Onslaught Cube"  => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Vigor Cube"      => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Quantum Cube"    => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Destruction Cube"=> "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Healing Cube"    => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Endurance Cube"  => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
        "Assist Cube"   => "http://localhost/wordpress/wp-content/uploads/2025/04/cube_5_sm.png",
    ];
    $cube_icon = $cube_icons[$cube_name] ?? "#";
    
    echo ('<div class="h-15 w-15 bg-cover bg-no-repeat" style="background-image: url(' . esc_url($cube_icon) . ');"></div>');
    echo ('<p>' . esc_html($cube_name) . '</p>');
    echo ('</div>');
}

function get_icon($item_name, $size_w, $size_h){

    $icons = [
        "I"   => "http://localhost/wordpress/wp-content/uploads/2025/04/type_2_bg.png",
        "II"   => "http://localhost/wordpress/wp-content/uploads/2025/04/type_2_bg.png",
        "III"   => "http://localhost/wordpress/wp-content/uploads/2025/04/type_2_bg.png",

        "Fire"   => "http://localhost/wordpress/wp-content/uploads/2025/04/wind_bg.png",
        "Water"   => "http://localhost/wordpress/wp-content/uploads/2025/04/wind_bg.png",
        "Electric"   => "http://localhost/wordpress/wp-content/uploads/2025/04/wind_bg.png",
        "Iron"   => "http://localhost/wordpress/wp-content/uploads/2025/04/wind_bg.png",
        "Wind"   => "http://localhost/wordpress/wp-content/uploads/2025/04/wind_bg.png",

        "SMG"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",
        "Assault Rifle"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",
        "Shotgun"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",
        "Sniper Rifle"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",
        "Machine Gun"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",
        "Rocket Launcher"   => "http://localhost/wordpress/wp-content/uploads/2025/04/weapon_rocket.png",

        "Elysion"   => "http://localhost/wordpress/wp-content/uploads/2025/04/man_missilis.png",
        "Missilis"   => "http://localhost/wordpress/wp-content/uploads/2025/04/man_missilis.png",
        "Tetra"   => "http://localhost/wordpress/wp-content/uploads/2025/04/man_missilis.png",
        "Pilgrim"   => "http://localhost/wordpress/wp-content/uploads/2025/04/man_missilis.png",
        "Abnormal"   => "http://localhost/wordpress/wp-content/uploads/2025/04/man_missilis.png",
    ];
    $icon = $icons[$item_name] ?? "#";
    echo (' <img width="' . esc_html($size_w) . '" height="' . esc_html($size_h) . '" class="inline" loading="lazy" src="' . esc_url($icon) . '" alt="' . $item_name . '">');
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

function register_character_profile() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'character',
            'title'             => __('Character Profile'),
            'description'       => __('A block with character inforamtion.'),
            'render_template'   => get_template_directory() . '/blocks/character-profile-block.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'character', 'post'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_character_profile');

function register_char_popout() {
    if (function_exists('acf_register_block_type')) {
        acf_register_block_type(array(
            'name'              => 'character_popout',
            'title'             => __('Character Popout'),
            'description'       => __('A block which popouts on character.'),
            'render_template'   => get_template_directory() . '/blocks/char-popout.php',
            'category'          => 'layout',
            'icon'              => 'menu',
            'keywords'          => array('body', 'character', 'post'),
            'supports'          => array('align' => true),
        ));
    }
}
add_action('acf/init', 'register_char_popout');

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



