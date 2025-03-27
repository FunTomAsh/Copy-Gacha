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

<div class="relative h-72 md:h-50 py-4 pl-6 pr-4 mb-8 border-1 border-[#33343a] flex flex-col md:flex-row items-center md:justify-between font-[Anuphan] bg-cover bg-no-repeat bg-center"  
    style="background-image: url('http://localhost/wordpress/wp-content/uploads/2025/03/profile_bg.jpg');">
    <div class="flex flex-col items-center md:items-start justify-center">
        <h1 class="col-ssr font-bold text-[24px] lg:text-[30px] xl:text-[52px]"><?php echo get_the_title($post->ID)?></h1>
        <span class="uppercase text-white text-[12px] md:text-[18px] font-bold">Information and guide</span>
    </div>
    <div class="items-center">
        <div class="absolute hidden md:block bg-ssr h-50 w-60 bottom-0 right-35 skew-x-[-20deg]"></div>
        <div class="">
            <img src="<?php echo esc_url(get_the_post_thumbnail_url(get_the_ID(), 'Medium')); ?>" alt="Post Thumbnail"
                class="absolute w-38 h-50 md:w-45 md:h-64 cover right-(h-full*0.5) md:right-46 -translate-x-1/2 md:translate-x-0 bottom-0 ">
        </div>
    </div>
</div>

<div class="text-white font-[Anuphan] text-[18px]">
    <?php the_content() ?>
</div>

<div class="flex flex-row space-x-2 justify-between mt-12 mb-5 transition-all font-[Anuphan] text-[18px]">
    <div class="flex flex-col items-center justify-center w-1/3 h-20 p-1 border-2 border-b-5 border-[#484950] border-b-[#d7bc57] bg-[#36373d] cursor-pointer duration-700 opacity-100">
        <div class="flex h-10 w-10 bg-ssr justify-center mt-[-24px]">
            <svg aria-hidden="true" focusable="false" data-icon="circle-info" class="justify-center" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18"><path fill="currentColor" d="M256 0C114.6 0 0 114.6 0 256s114.6 256 256 256s256-114.6 256-256S397.4 0 256 0zM256 128c17.67 0 32 14.33 32 32c0 17.67-14.33 32-32 32S224 177.7 224 160C224 142.3 238.3 128 256 128zM296 384h-80C202.8 384 192 373.3 192 360s10.75-24 24-24h16v-64H224c-13.25 0-24-10.75-24-24S210.8 224 224 224h32c13.25 0 24 10.75 24 24v88h16c13.25 0 24 10.75 24 24S309.3 384 296 384z"></path></svg>
        </div>
        <p class="uppercase text-white font-bold mt-2">Profile</p>
    </div>
    <div class="flex flex-col items-center justify-center w-1/3 h-20 p-1 border-2 border-b-5 border-[#33343a] border-b-[#484950] bg-[#2c2d33] cursor-pointer duration-700 opacity-70 hover:opacity-100">
        <div class="flex h-10 w-10 bg-ssr justify-center mt-[-24px]">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="book" class="svg-inline--fa fa-book " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18"><path fill="currentColor" d="M448 336v-288C448 21.49 426.5 0 400 0H96C42.98 0 0 42.98 0 96v320c0 53.02 42.98 96 96 96h320c17.67 0 32-14.33 32-31.1c0-11.72-6.607-21.52-16-27.1v-81.36C441.8 362.8 448 350.2 448 336zM143.1 128h192C344.8 128 352 135.2 352 144C352 152.8 344.8 160 336 160H143.1C135.2 160 128 152.8 128 144C128 135.2 135.2 128 143.1 128zM143.1 192h192C344.8 192 352 199.2 352 208C352 216.8 344.8 224 336 224H143.1C135.2 224 128 216.8 128 208C128 199.2 135.2 192 143.1 192zM384 448H96c-17.67 0-32-14.33-32-32c0-17.67 14.33-32 32-32h288V448z"></path></svg>        </div>
        <p class="uppercase text-white font-bold mt-2">Review</p>
    </div>
    <div class="flex flex-col items-center justify-center w-1/3 h-20 p-1 border-2 border-b-5 border-[#33343a] border-b-[#484950] bg-[#2c2d33] cursor-pointer duration-700 opacity-70 hover:opacity-100">
        <div class="flex h-10 w-10 bg-ssr justify-center mt-[-24px]">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="diagram-project" class="svg-inline--fa fa-diagram-project " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18"><path fill="currentColor" d="M0 80C0 53.49 21.49 32 48 32H144C170.5 32 192 53.49 192 80V96H384V80C384 53.49 405.5 32 432 32H528C554.5 32 576 53.49 576 80V176C576 202.5 554.5 224 528 224H432C405.5 224 384 202.5 384 176V160H192V176C192 177.7 191.9 179.4 191.7 180.1L272 288H368C394.5 288 416 309.5 416 336V432C416 458.5 394.5 480 368 480H272C245.5 480 224 458.5 224 432V336C224 334.3 224.1 332.6 224.3 331L144 224H48C21.49 224 0 202.5 0 176V80z"></path></svg>        </div>
        <p class="uppercase text-white font-bold mt-2">Investment tips</p>
    </div>
</div>

<div>
    <div id="Profile">
        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2"
        style="border-color: #d7bc57;">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="svg-inline--fa fa-square " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path fill="#d7bc57" d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Skills</h2>
        </div>
        <div class="flex flex-wrap text-[Anuphan]">

            <div id="NormalATK" class="h-70 w-1/2 mb-5 px-3">

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-y-auto overflow-x-hidden">
                    <div class="grid grid-cols-[20%_80%] gap-2 w-full h-22 bg-[#2c2d33] justify-between items-center">
                        <div class="flex h-[96%] bg-ssr text-[#303030] items-center justify-center font-semibold text-[Anuphan]">
                            Normal Attack
                        </div>
                        <div class="flex flex-col items-start p-2 h-full">
                            <p class="font-bold text-white text-[Anuphan]">Normal Attack</p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] text-[Anuphan]">Rocket Launcher</p>
                        </div>
                    </div>
                    <div class="grid grid-cols-[33%_33%_33%] justify-between h-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Mode: <span class="text-white text-sm font-semibold">Charge</span></p>
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Ammo: <span class="text-white text-sm font-semibold">6</span></p>
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Reload: <span class="text-white text-sm font-semibold">2s</span></p>

                    </div>
                    <div class="h-full p-4">
                        <p class="text-white mb-2">■ Affects target enemy.</p>
                        <p class="col-ssr mb-2"><b>Deals 61.3% ATK as damage. </b></p>
                    </div>
                </div>

            </div>

            <div id="Skill1" class="h-70 w-1/2 mb-5 px-3">

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-y-auto overflow-x-hidden">
                    <div class="grid grid-cols-[20%_80%] gap-2 w-full h-22 bg-[#2c2d33] justify-between items-center">
                        <div class="flex h-[96%] bg-ssr text-[#303030] items-center justify-center font-semibold text-[Anuphan]">
                            SKill 1
                        </div>
                        <div class="flex flex-col items-start p-2 h-full">
                            <p class="font-bold text-white text-[Anuphan]">Fairy Dance</p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] text-[Anuphan]">Passive</p>
                        </div>
                    </div>
                    <div class="grid grid-cols-[33%_33%_33%] justify-between h-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold">-</span></p>
                    </div>
                    <div class="h-full p-4">
                        <p class="text-white mb-2">■ Affects all Supporter allies. Activates after 3 normal attack(s).</p>
                        <p class="col-ssr mb-2"><b>Recover 6.07% of attack damage as HP over 5 sec.</b></p>
                    </div>
                </div>

            </div>

            <div id="Skill2" class="h-70 w-1/2 mb-5 px-3">

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-y-auto overflow-x-hidden">
                    <div class="grid grid-cols-[20%_80%] gap-2 w-full h-22 bg-[#2c2d33] justify-between items-center">
                        <div class="flex h-[96%] bg-ssr text-[#303030] items-center justify-center font-semibold text-[Anuphan]">
                            Skill 2
                        </div>
                        <div class="flex flex-col items-start p-2 h-full">
                            <p class="font-bold text-white text-[Anuphan]">Fairy's Jest</p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] text-[Anuphan]">Passive</p>
                        </div>
                    </div>
                    <div class="grid grid-cols-[33%_33%_33%] justify-between h-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold">-</span></p>
                    </div>
                    <div class="h-full p-4">
                        <p class="text-white mb-2">■ Affects all allies. Activates when above 90% HP.</p>
                        <p class="col-ssr mb-2"><b>HP Potency ▲ 23.46%.</b></p>
                        <p class="text-white mb-2">■ Activates when the last bullet hits the target while having over 90% HP. Affects all enemies.</p>
                        <p class="col-ssr mb-2"><b>HP Potency ▼ 78.93% for 10 sec.</b></p>
                    </div>
                </div>

            </div>

            <div id="Burst" class="h-70 w-1/2 mb-5 px-3">

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-y-auto overflow-x-hidden">
                    <div class="grid grid-cols-[20%_80%] gap-2 w-full h-22 bg-[#2c2d33] justify-between items-center">
                        <div class="flex h-[96%] bg-ssr text-[#303030] items-center justify-center font-semibold text-[Anuphan]">
                            Burst
                        </div>
                        <div class="flex flex-col items-start p-2 h-full">
                            <p class="font-bold text-white text-[Anuphan]">Blue Butterfly Slumber</p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] text-[Anuphan]">Rocket Launcher</p>
                        </div>
                    </div>
                    <div class="grid grid-cols-[33%_33%_33%] justify-between h-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold">60s</span></p>
                    </div>
                    <div class="h-full p-4">
                        <p class="text-white mb-2">■ Affects 1 random fallen Attacker ally unit(s) randomly.</p>
                        <p class="col-ssr mb-2"><b>Resurrect with 99% HP. Activates once per battle.</b></p>
                        <p class="text-white mb-2">■ Affects all Attacker allies.</p>
                        <p class="col-ssr mb-2"><b>Recovers 38.61% of the caster's final Max HP as HP.</b></p>
                        <p class="col-ssr mb-2"><b>ATK ▲ 77.22% for 10 sec.</b></p>
                    </div>
                </div>

            </div>
            

        </div>

    </div>
    
    <div id="Review">

    </div>
    <div id="Investment tips">

    </div>

</div>

    
<?php get_footer() ?>