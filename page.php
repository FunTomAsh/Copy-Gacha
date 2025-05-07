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
<div class="w-full flex flex-wrap gap-2 justify-center font-[Anuphan]">
    <div class="relative flex w-full md:w-1/2 items-center">
        <input class="w-full h-full bg-white py-2 px-4 border-1 border-[#ced4da] focus:border-[#0dcaf0] transition-all ease-in-out duration-150 focus:outline-solid focus:outline-4 focus:outline-[#3441c1] " placeholder="Search characters..." >
        <span role="button" class="right-2 absolute font-bold mx-2 text-[24px] cursor-pointer">×</span>
    </div>
    <div class="relative flex items-center grow border-1 border-[#484950]">
        <button class="text-white char-filter-btn-sec active">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="asterisk" class="inline" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="16"><path fill="currentColor" d="M417.1 368c-5.937 10.27-16.69 16-27.75 16c-5.422 0-10.92-1.375-15.97-4.281L256 311.4V448c0 17.67-14.33 32-31.1 32S192 465.7 192 448V311.4l-118.3 68.29C68.67 382.6 63.17 384 57.75 384c-11.06 0-21.81-5.734-27.75-16c-8.828-15.31-3.594-34.88 11.72-43.72L159.1 256L41.72 187.7C26.41 178.9 21.17 159.3 29.1 144C36.63 132.5 49.26 126.7 61.65 128.2C65.78 128.7 69.88 130.1 73.72 132.3L192 200.6V64c0-17.67 14.33-32 32-32S256 46.33 256 64v136.6l118.3-68.29c3.838-2.213 7.939-3.539 12.07-4.051C398.7 126.7 411.4 132.5 417.1 144c8.828 15.31 3.594 34.88-11.72 43.72L288 256l118.3 68.28C421.6 333.1 426.8 352.7 417.1 368z"></path></svg>
        </button>
        <button class="text-[#0090ff] char-filter-btn-sec" value="r">
                R
        </button>
        <button class="text-[#bf00fe] char-filter-btn-sec" value="sr">
                SR
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec" value="ssr">
                SSR
        </button>
    </div>
    <div class="relative flex items-center grow border-1 border-[#484950]">
        <button class="text-white char-filter-btn-sec active">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="asterisk" class="inline" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="16"><path fill="currentColor" d="M417.1 368c-5.937 10.27-16.69 16-27.75 16c-5.422 0-10.92-1.375-15.97-4.281L256 311.4V448c0 17.67-14.33 32-31.1 32S192 465.7 192 448V311.4l-118.3 68.29C68.67 382.6 63.17 384 57.75 384c-11.06 0-21.81-5.734-27.75-16c-8.828-15.31-3.594-34.88 11.72-43.72L159.1 256L41.72 187.7C26.41 178.9 21.17 159.3 29.1 144C36.63 132.5 49.26 126.7 61.65 128.2C65.78 128.7 69.88 130.1 73.72 132.3L192 200.6V64c0-17.67 14.33-32 32-32S256 46.33 256 64v136.6l118.3-68.29c3.838-2.213 7.939-3.539 12.07-4.051C398.7 126.7 411.4 132.5 417.1 144c8.828 15.31 3.594 34.88-11.72 43.72L288 256l118.3 68.28C421.6 333.1 426.8 352.7 417.1 368z"></path></svg>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Electric", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Fire", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Iron", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Water", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Wind", 20, 20) ?>
        </button>
    </div>
    <div class="relative flex items-center grow border-1 border-[#484950]">
        <button class="text-white char-filter-btn-sec active">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="asterisk" class="inline" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="16"><path fill="currentColor" d="M417.1 368c-5.937 10.27-16.69 16-27.75 16c-5.422 0-10.92-1.375-15.97-4.281L256 311.4V448c0 17.67-14.33 32-31.1 32S192 465.7 192 448V311.4l-118.3 68.29C68.67 382.6 63.17 384 57.75 384c-11.06 0-21.81-5.734-27.75-16c-8.828-15.31-3.594-34.88 11.72-43.72L159.1 256L41.72 187.7C26.41 178.9 21.17 159.3 29.1 144C36.63 132.5 49.26 126.7 61.65 128.2C65.78 128.7 69.88 130.1 73.72 132.3L192 200.6V64c0-17.67 14.33-32 32-32S256 46.33 256 64v136.6l118.3-68.29c3.838-2.213 7.939-3.539 12.07-4.051C398.7 126.7 411.4 132.5 417.1 144c8.828 15.31 3.594 34.88-11.72 43.72L288 256l118.3 68.28C421.6 333.1 426.8 352.7 417.1 368z"></path></svg>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Assault Rifle", 40, 25) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Machine Gun", 40, 25) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Rocket Launcher", 40, 25) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Shotgun", 40, 25) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("SMG", 40, 25) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Sniper Rifle", 40, 25) ?>
        </button>
    </div>
    <div class="relative flex items-center grow border-1 border-[#484950]">
        <button class="text-white char-filter-btn-sec active">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="asterisk" class="inline" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="16"><path fill="currentColor" d="M417.1 368c-5.937 10.27-16.69 16-27.75 16c-5.422 0-10.92-1.375-15.97-4.281L256 311.4V448c0 17.67-14.33 32-31.1 32S192 465.7 192 448V311.4l-118.3 68.29C68.67 382.6 63.17 384 57.75 384c-11.06 0-21.81-5.734-27.75-16c-8.828-15.31-3.594-34.88 11.72-43.72L159.1 256L41.72 187.7C26.41 178.9 21.17 159.3 29.1 144C36.63 132.5 49.26 126.7 61.65 128.2C65.78 128.7 69.88 130.1 73.72 132.3L192 200.6V64c0-17.67 14.33-32 32-32S256 46.33 256 64v136.6l118.3-68.29c3.838-2.213 7.939-3.539 12.07-4.051C398.7 126.7 411.4 132.5 417.1 144c8.828 15.31 3.594 34.88-11.72 43.72L288 256l118.3 68.28C421.6 333.1 426.8 352.7 417.1 368z"></path></svg>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Attacker", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Defender", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("Supporter", 20, 20) ?>
        </button>
    </div>
    <div class="relative flex items-center grow border-1 border-[#484950]">
        <button class="text-white char-filter-btn-sec active">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="asterisk" class="inline" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18" height="16"><path fill="currentColor" d="M417.1 368c-5.937 10.27-16.69 16-27.75 16c-5.422 0-10.92-1.375-15.97-4.281L256 311.4V448c0 17.67-14.33 32-31.1 32S192 465.7 192 448V311.4l-118.3 68.29C68.67 382.6 63.17 384 57.75 384c-11.06 0-21.81-5.734-27.75-16c-8.828-15.31-3.594-34.88 11.72-43.72L159.1 256L41.72 187.7C26.41 178.9 21.17 159.3 29.1 144C36.63 132.5 49.26 126.7 61.65 128.2C65.78 128.7 69.88 130.1 73.72 132.3L192 200.6V64c0-17.67 14.33-32 32-32S256 46.33 256 64v136.6l118.3-68.29c3.838-2.213 7.939-3.539 12.07-4.051C398.7 126.7 411.4 132.5 417.1 144c8.828 15.31 3.594 34.88-11.72 43.72L288 256l118.3 68.28C421.6 333.1 426.8 352.7 417.1 368z"></path></svg>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("I", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("II", 20, 20) ?>
        </button>
        <button class="text-[#ffc000] char-filter-btn-sec">
            <?php echo get_icon("III", 20, 20) ?>
        </button>
    </div>

    <div class="flex grow reset border-1 border-[#484950]">
        <button type="button" class="custom-dropdown text-white char-filter-btn-sec">
            Any Manufacturer
            <svg height="20" width="20" viewBox="0 0 20 20" aria-hidden="true" focusable="false" class="inline">
                <path fill="white" d="M4.516 7.548c0.436-0.446 1.043-0.481 1.576 0l3.908 3.747 3.908-3.747c0.533-0.481 1.141-0.446 1.574 0 0.436 0.445 0.408 1.197 0 1.615-0.406 0.418-4.695 4.502-4.695 4.502-0.217 0.223-0.502 0.335-0.787 0.335s-0.57-0.112-0.789-0.335c0 0-4.287-4.084-4.695-4.502s-0.436-1.17 0-1.615z"></path>
            </svg>
        </button>
    </div>

    <div class="flex grow reset border-1 border-[#484950]">
        <button type="button" class="custom-dropdown text-white char-filter-btn-sec">
            Any Speciality
            <svg height="20" width="20" viewBox="0 0 20 20" aria-hidden="true" focusable="false" class="inline">
                <path fill="white" d="M4.516 7.548c0.436-0.446 1.043-0.481 1.576 0l3.908 3.747 3.908-3.747c0.533-0.481 1.141-0.446 1.574 0 0.436 0.445 0.408 1.197 0 1.615-0.406 0.418-4.695 4.502-4.695 4.502-0.217 0.223-0.502 0.335-0.787 0.335s-0.57-0.112-0.789-0.335c0 0-4.287-4.084-4.695-4.502s-0.436-1.17 0-1.615z"></path>
            </svg>
        </button>
    </div>

    <div class="flex grow reset border-1 border-[#484950]">
        <button type="button" class="text-white char-filter-btn-sec">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="xmark" class="inline mr-2" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" width="10">
                <path fill="currentColor" d="M310.6 361.4c12.5 12.5 12.5 32.75 0 45.25C304.4 412.9 296.2 416 288 416s-16.38-3.125-22.62-9.375L160 301.3L54.63 406.6C48.38 412.9 40.19 416 32 416S15.63 412.9 9.375 406.6c-12.5-12.5-12.5-32.75 0-45.25l105.4-105.4L9.375 150.6c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0L160 210.8l105.4-105.4c12.5-12.5 32.75-12.5 45.25 0s12.5 32.75 0 45.25l-105.4 105.4L310.6 361.4z"></path>
            </svg> 
            Reset
        </button>
    </div>
</div>


<div class="characters grid grid-auto-fill justify-between mt-4">
    <span class="bg-white w-35 h-50"></span>


</div>

<?php get_footer() ?>