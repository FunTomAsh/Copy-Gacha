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
<?php
    $page_icon = get_field('page_icon');
    if (!$page_icon){ $page_icon = "http://localhost/wordpress/wp-content/uploads/2025/04/Osaka.jpg";}
?>
<div class="h-25 flex flex-row mb-6.25 items-center">
    <div class="h-full w-25 mr-3.75 border-2 border-[#33343a] bg-[#2c2d33]">
        <img class="cover no-repeat" src="<?php echo esc_url($page_icon)?>" alt="Page Icon">
    </div>
    <div class="text-white font-[Anuphan] items-center">
        <h1 class="text-[30px] font-bold">NIKKE <?php echo get_the_title($post->ID)?></h1>
        <h2 class="text-[18px] text-[hsla(0,0%,100%,.9)]">List of characters available in NIKKE.</h2>
        <p class="text-[14px] text-[hsla(0,0%,100%,.75)]">Last updated: <strong><?php echo get_the_modified_date('j/F/Y'); ?></strong></p>
    </div>
</div>

<?php the_content() ?>

<div class="my-3 border-1 border-[#484950] transition-all">
    <div class="h-13 bg-[#36373d] cursor-pointer">
        <div class="flex flex-row h-full w-full py-1 px-4 items-center justify-between text-white font-[Anuphan]">
            <h2 class="justify-start select-none">Special markings</h2>
            <svg class="justify-end duration-300" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="24"> <path fill="currentColor" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"</svg>
        </div>
    </div>
    <div class="h-min-64 bg-[#2c2d33] py-5 px-6 text-white font-[Anuphan] leading-6.5 duration-500 ease-in-out">
        <p class="mb-3">Explanations for the special markings:</p>
        <ul class="pl-4 mb-4 list-disc">
            <li><strong>H </strong>- has a Treasure available that amplifies their kit,</li>
            <li><strong>T </strong>is a limited character that isn't available in the general pool,</li>
            <li><strong>$ </strong> heavy investment is required to play the character at their full potential.</li>
        </ul>        
    </div>
</div>

<?php get_footer() ?>