<?php 
    $post_id = get_the_ID();
?>
<div class="my-4 text-[hsla(0,0%,100%,.55)] font-[Anuphan] leading-[22px] transition-all">
    <a class="hover:text-[#1aadf7] duration-500" href="<?php echo home_url('/'); ?>">NIKKE</a>
    <?php $parents = array_reverse(get_post_ancestors($post_id)); 
    foreach ($parents as $parent_id) { ?>
    <span> / </span><a class="hover:text-[#1aadf7] duration-500" href="<?php echo get_permalink($parent_id); ?>"><?php echo get_the_title($parent_id); ?></a>
    <?php } ?>
    <?php  $categories = get_the_category();
     if(!empty($categories)) : $primary_cat = $categories[0]; ?><span> / </span><a class="hover:text-[#1aadf7] duration-500" href="<?php echo home_url($primary_cat->slug);  ?>"><?php echo esc_html($primary_cat->name); ?></a><?php endif; ?>
    
    <span class="text-white"><span> / </span><?php echo get_the_title($post_id)?></span>
</div>  