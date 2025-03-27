<?php
    $section_name = get_field('section_name');
    $color = get_field('color');
?>
<div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 text-[Anuphan]"
    style="border-color: <?php if (isset($color)) :  echo esc_html($color); endif; ?>;">
    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="svg-inline--fa fa-square " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
        <path fill="<?php if (isset($color)) :  echo esc_html($color); endif; ?>" d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
    </svg>
    <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]"><?php if (isset($section_name)) :  echo esc_html($section_name); endif; ?></h2>
</div>