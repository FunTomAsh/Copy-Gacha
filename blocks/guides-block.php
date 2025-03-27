<?php
    $guides_category = get_field('guides_category');
    $guides = get_field('guides');
?>


<?php if (isset($guides_category)) : ?><h5 class="mb-[.5rem] text-[1.25rem] font-bold text-white font-[Anuphan]"><?php echo esc_html($guides_category);?></h5> <?php endif; ?>
<div class="flex flex-wrap items-center mb-[15px]">
    <?php if (have_rows('guides')) : ?>
        <?php while (have_rows('guides')) : the_row(); ?>
            <?php
            $guide_name = get_sub_field('guide_name');
            $guide_picture = get_sub_field('guide_picture');
            $guide_link = get_sub_field('guide_link');
            $is_updated = get_sub_field('is_updated');
            ?>
            <div class="h-[104px] w-full lg:w-[33%] mb-3 px-2">
                <a class="group/link relative h-full flex flex-row items-center text-white font-[Anuphan] border-2 border-[#33343a] hover:border-[#484950] bg-[#2c2d33] hover:bg-[#36373d] transition-all duration-700 cursor-pointer"
                href="<?php if (isset($guide_link)) : echo esc_html($guide_link); endif; ?>">
                    <img src="<?php if (isset($guide_picture)) : echo esc_html($guide_picture); endif;?>" alt="#">
                    <div class="flex flex-col lg:flex-row items-center">
                        <p class="text-[18px] pl-[20px] font-semibold"><?php if (isset($guide_name)) : echo esc_html($guide_name); endif; ?></p>
                        <?php if (isset($is_updated) && $is_updated) : ?><span class="bg-[#009eec] text-[14px] font-500 px-[6px] py-[3px] ml-[6px]">Updated</span><?php endif; ?>
                    </div>          
                    <svg class="absolute hidden lg:inline right-[25px] group-hover/link:right-[15px] text-[hsla(0,0%,100%,.55);] group-hover/link:text-white transition-all duration-700" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18"><path fill="currentColor" d="M504.3 273.6l-112.1 104c-6.992 6.484-17.18 8.218-25.94 4.406c-8.758-3.812-14.42-12.45-14.42-21.1L351.9 288H32C14.33 288 .0002 273.7 .0002 255.1S14.33 224 32 224h319.9l0-72c0-9.547 5.66-18.19 14.42-22c8.754-3.809 18.95-2.075 25.94 4.41l112.1 104C514.6 247.9 514.6 264.1 504.3 273.6z"></path></svg>
                </a>
            </div>
        <?php endwhile; ?>        
    <?php endif; ?>   
</div>