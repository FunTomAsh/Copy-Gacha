<?php
    $new_post = get_field('new_post');
?>


<div class="flex flex-wrap items-center text-center">
    <?php if (have_rows('new_post')) : ?>
        <?php while (have_rows('new_post')) : the_row(); ?>
            <?php
            $post_name = get_sub_field('post_name');
            $post_background = get_sub_field('post_background');
            $post_link = get_sub_field('post_link');
            ?>
            <div class="lg:ml-2 mb-2 flex flex-col items-center justify-center w-full lg:w-[49%] p-[15px] h-[170px] bg-cover bg-no-repeat"
            <?php if (isset($post_background['url'])) : ?> style="background-image: url('<?php echo esc_url($post_background['url']); ?>');" <?php endif; ?>>
                <h4 class="text-white text-[22px] font-bold" ><?php if (isset($post_name)) : echo esc_html($post_name); endif; ?></h4>
                <a href="<?php if (isset($post_link)) : echo esc_html($post_link); endif; ?>">
                    <button class="button mt-[15px] bg-white hover:bg-[#1aadf7] text-[16px] font-bold text-black hover:text-white transitiona-all duration-150 cursor-pointer">Read more</button>
                </a>
            </div>
        <?php endwhile; ?>        
    <?php endif; ?>
</div>