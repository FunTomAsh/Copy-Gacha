<?php get_header() ?>

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
<div class="h-25 flex flex-row mb-6.25 items-center">
    <div class="h-full w-25 mr-3.75 border-2 border-[#33343a] bg-[#2c2d33]">
        <img class="" src="">
    </div>
    <div class="text-white font-[Anuphan] items-center">
        <h1 class="text-[30px] font-bold">NIKKE Characters</h1>
        <h2 class="text-[18px] text-[hsla(0,0%,100%,.9)]">List of characters available in NIKKE.</h2>
        <p class="text-[14px] text-[hsla(0,0%,100%,.75)]">Last updated: <strong>21/Feb/2025</strong></p>
    </div>
</div>

<?php the_content() ?>

<?php get_footer() ?>