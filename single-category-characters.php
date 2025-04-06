<?php get_header() ?>

<?php
    $rarity = get_field('rarity');
    if(!isset($rarity)) {$rarity = "SSR";}
/*
    $character_icon = get_field('charcter_icon');
    if(!isset($character_icon)) {$character_icon = "http://localhost/wordpress/wp-content/uploads/2025/02/AliceLove.png";}
    $fav_item = get_field('favorite_item');
    if(!isset($fav_item)) {$fav_item = "No";}
    $tier_SL = get_field('story_low_deficit');
    if(!isset($tier_SL)) {$tier_SL = "F";}
    $tier_SH = get_field('story_high_deficit');
    if(!isset($tier_SH)) {$tier_SH = "F";}
    $tier_B = get_field('bossing');
    if(!isset($tier_B)) {$tier_B = "F";}
    $tier_PVP = get_field('pvp');
    if(!isset($tier_PVP)) {$tier_PVP = "F";}
    $role = get_field('role');
    if(!isset($role)) {$role = "Attacker";}
    $burst = get_field('burst');
    if(!isset($burst)) {$burst = "I";}
    $burst_cd = get_field('burst_cd');
    if(!isset($burst_cd)) {$burst_cd = "20s";}
    $weapon = get_field('weapon');
    if(!isset($weapon)) {$weapon = "SMG";}
    $element = get_field('element');
    if(!isset($element)) {$element = "Water";}
    $faction = get_field('faction');
    if(!isset($faction)) {$faction = "Tetra";}
    */
?>

<div class="my-4 text-[hsla(0,0%,100%,.55)] font-[Anuphan] leading-[22px] transition-all">
    <a class="hover:text-[#1aadf7] duration-500" href="<?php echo home_url('/'); ?>">NIKKE</a>
    <?php $parents = array_reverse(get_post_ancestors($post->ID)); 
    foreach ($parents as $parent_id) { ?>
    <span> / </span><a class="hover:text-[#1aadf7] duration-500" href="<?php echo get_permalink($parent_id); ?>"><?php echo get_the_title($parent_id); ?></a>
    <?php } ?>
    <?php  $categories = get_the_category();
     if(!empty($categories)) : $primary_cat = $categories[0]; ?><span> / </span><a class="hover:text-[#1aadf7] duration-500" href="<?php echo home_url($primary_cat->slug);  ?>"><?php echo esc_html($primary_cat->name); ?></a><?php endif; ?>
    
    <span class="text-white"><span> / </span><?php echo get_the_title($post->ID)?></span>
</div>  

<div class="relative h-72 md:h-50 py-4 pl-6 pr-4 mb-8 border-1 border-[#33343a] flex flex-col md:flex-row items-center md:justify-between font-[Anuphan] bg-cover bg-no-repeat bg-center"  
    style="background-image: url('http://localhost/wordpress/wp-content/uploads/2025/03/profile_bg.jpg');">
    <div class="flex flex-col items-center md:items-start justify-center">
        <h1 class="<?php echo esc_html($rarity); ?> font-bold text-[24px] lg:text-[30px] xl:text-[52px]"><?php echo get_the_title($post->ID)?></h1>
        <span class="uppercase text-white text-[12px] md:text-[18px] font-bold">Information and guide</span>
    </div>
    <div class="items-center">
        <div class="absolute hidden md:block <?php echo esc_html($rarity); ?>-bg h-50 w-60 bottom-0 right-35 skew-x-[-20deg]"></div>
        <div class="">
            <img loading="lazy" src="<?php echo esc_url(get_the_post_thumbnail_url(get_the_ID(), 'Medium')); ?>" alt="Post Thumbnail"
                class="absolute w-38 h-50 md:w-45 md:h-64 cover right-(h-full*0.5) md:right-46 -translate-x-1/2 md:translate-x-0 bottom-0 ">
        </div>
    </div>
</div>

<div class="text-white font-[Anuphan] mb-3">
    <?php the_content() ?>
</div>

<?php get_footer() ?>