<?php
    $post_id = get_the_ID(); 
    $section_name = get_field('section_name');
    $color = get_field('color');
    if (!isset($color)) : $color = "#2692d3"; endif;
    $rarity = get_field('rarity', $post_id);
    $additional_text = get_field('additional_text');
    if (!isset($additional_text)){$additional_text = "";}

?>
<div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 text-[Anuphan] <?php if(isset($rarity)) : echo esc_html($rarity); endif;?>"
    <?php if (!isset($rarity)) : ?>style="border-color: <?php if (isset($color)) :  echo esc_html($color); endif; ?>;"<?php endif; ?>>
    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php if(isset($rarity)) : echo esc_html($rarity); endif;?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
        <path <?php if (!isset($rarity)) : ?>fill="<?php echo esc_html($color);?>"<?php endif; ?> d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
    </svg>
    <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]"><?php if (isset($section_name)) :  echo esc_html($section_name); endif; ?></h2>
    <span class="pl-4 text-white opacity-60 text-[14px]"><?php echo esc_html($additional_text); ?></span>
</div>