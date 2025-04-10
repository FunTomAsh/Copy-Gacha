<?php
    $post_id = get_the_ID(); 

    $character_icon = get_field('charcter_icon', $post_id);
    if(!isset($character_icon)) {$character_icon = "http://localhost/wordpress/wp-content/uploads/2025/02/AliceLove.png";}
    $rarity = get_field('rarity', $post_id);
    if(!isset($rarity)) {$rarity = "SSR";}
    $fav_item = get_field('favorite_item', $post_id);
    if(!isset($fav_item)) {$fav_item = "No";}
    $tier_SL = get_field('story_low_deficit', $post_id);
    if(!isset($tier_SL)) {$tier_SL = "F";}
    $tier_SH = get_field('story_high_deficit', $post_id);
    if(!isset($tier_SH)) {$tier_SH = "F";}
    $tier_B = get_field('bossing', $post_id);
    if(!isset($tier_B)) {$tier_B = "F";}
    $tier_PVP = get_field('pvp', $post_id);
    if(!isset($tier_PVP)) {$tier_PVP = "F";}
    $role = get_field('role', $post_id);
    if(!isset($role)) {$role = "Attacker";}
    $burst = get_field('burst', $post_id);
    if(!isset($burst)) {$burst = "I";}
    $burst_cd = get_field('burst_cd', $post_id);
    if(!isset($burst_cd)) {$burst_cd = "20s";}
    $weapon = get_field('weapon', $post_id);
    if(!isset($weapon)) {$weapon = "SMG";}
    $element = get_field('element', $post_id);
    if(!isset($element)) {$element = "Water";}
    $faction = get_field('faction', $post_id);
    if(!isset($faction)) {$faction = "Default";}

    $introducion = get_field('introduction');
    if(!isset($introducion)) {$introducion = "Introduction...";}

    $gallery = get_field('gallery');
    $voice_ac = get_field('voice_actors');
    $specialities = get_field('specialities');
    $normal_atk = get_field('normal_attack');
    
?>

<div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
    <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
        <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
    </svg>
    <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Introduction</h2>
</div>

<div class="text-white font-[Anuphan] text-[18px] mb-3">
    <h2 class="inline"><strong><?php echo get_the_title($post_id)?></strong> is a <strong class="<?php echo esc_html($rarity); ?>"><?php echo esc_html($rarity); ?> rarity</strong> <strong>Burst</strong><?php get_icon($burst, 30,35)?> character from the <strong><?php echo esc_html($role) ?></strong> class, who wields a <strong><?php echo esc_html($weapon); get_icon($weapon, 30,35); ?></strong> weapon and belongs to the <strong><?php echo esc_html($element); get_icon($element, 30, 35); ?></strong> element. She’s part of the <strong><?php echo esc_html($faction); get_icon($faction, 30, 35); ?></strong> faction. </h2>
    <p class="inline"><?php echo esc_html($introducion); ?></p>
</div>

<p class="text-white font-[Anuphan] text-[18px] mb-3">To learn more about <span class="<?php echo esc_html($rarity); ?> font-bold"><?php echo get_the_title($post_id)?></span> check the sections below. <strong>Use the tabs</strong> to quickly switch to the kind of information you're looking for.</p>

<div class="flex flex-wrap mt-12 mb-5 transition-all font-[Anuphan] text-[16px] md:text-[18px]">
    <div class="w-1/2 sm:w-1/3 h-21 p-1 ">
        <div id="profile-button" rarity="<?php echo esc_attr($rarity); ?>" class="h-full w-full flex flex-col items-center p-1 justify-center cursor-pointer duration-700 hover:opacity-100 border-2 border-solid border-b-5 border-b-solid opacity-100" style="background-color: #36373d; border-color: #484950; border-bottom-color: <?php if ($rarity == "R"){echo "#2ca7ff";} elseif($rarity == "SR"){echo "#c97ef5";} else{echo "#d7bc57";} ?>;">
            <div class="flex h-7 w-7 md:h-10 md:w-10 <?php echo esc_html($rarity); ?>-bg justify-center mt-[2] md:mt-[-24px] mx-auto md:mx-0">
                <svg aria-hidden="true" focusable="false" data-icon="circle-info" class="justify-center" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18"><path fill="<?php if($rarity == "R" || $rarity == "SR"){echo "white";} else{echo "black";}?>" d="M256 0C114.6 0 0 114.6 0 256s114.6 256 256 256s256-114.6 256-256S397.4 0 256 0zM256 128c17.67 0 32 14.33 32 32c0 17.67-14.33 32-32 32S224 177.7 224 160C224 142.3 238.3 128 256 128zM296 384h-80C202.8 384 192 373.3 192 360s10.75-24 24-24h16v-64H224c-13.25 0-24-10.75-24-24S210.8 224 224 224h32c13.25 0 24 10.75 24 24v88h16c13.25 0 24 10.75 24 24S309.3 384 296 384z"></path></svg>
            </div>
            <p class="md:uppercase text-white md:font-bold m-1 md:mt-2">Profile</p>
        </div>
    </div>
    <div class="w-1/2 sm:w-1/3 h-21 p-1 ">
        <div id="review-button" rarity="<?php echo esc_attr($rarity); ?>" class="flex flex-col h-full w-full items-center justify-center p-1 cursor-pointer duration-700 border-2 border-solid border-b-5 border-b-solid opacity-70 hover:opacity-100" style="background-color: #2c2d33; border-color: #33343a; border-bottom-color: #484950;">
            <div class="flex h-7 w-7 md:h-10 md:w-10 <?php echo esc_html($rarity); ?>-bg justify-center mt-[2] md:mt-[-24px] mx-auto md:mx-0">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="book" class="svg-inline--fa fa-book " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18"><path fill="<?php if($rarity == "R" || $rarity == "SR"){echo "white";} else{echo "black";}?>" d="M448 336v-288C448 21.49 426.5 0 400 0H96C42.98 0 0 42.98 0 96v320c0 53.02 42.98 96 96 96h320c17.67 0 32-14.33 32-31.1c0-11.72-6.607-21.52-16-27.1v-81.36C441.8 362.8 448 350.2 448 336zM143.1 128h192C344.8 128 352 135.2 352 144C352 152.8 344.8 160 336 160H143.1C135.2 160 128 152.8 128 144C128 135.2 135.2 128 143.1 128zM143.1 192h192C344.8 192 352 199.2 352 208C352 216.8 344.8 224 336 224H143.1C135.2 224 128 216.8 128 208C128 199.2 135.2 192 143.1 192zM384 448H96c-17.67 0-32-14.33-32-32c0-17.67 14.33-32 32-32h288V448z"></path></svg>        </div>
            <p class="md:uppercase text-white md:font-bold m-1 md:mt-2">Review</p>
        </div>
    </div>
    <div class="w-1/2 sm:w-1/3 h-21 p-1 ">
        <div id="invest-button" rarity="<?php echo esc_attr($rarity); ?>" class="flex flex-col h-full w-full items-center justify-center p-1 cursor-pointer duration-700 border-2 border-solid border-b-5 border-b-solid opacity-70 hover:opacity-100" style="background-color: #2c2d33; border-color: #33343a; border-bottom-color: #484950;">
            <div class="flex h-7 w-7 md:h-10 md:w-10 <?php echo esc_html($rarity); ?>-bg justify-center mt-[2] md:mt-[-24px] mx-auto md:mx-0">
                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="diagram-project" class="svg-inline--fa fa-diagram-project " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18"><path fill="<?php if($rarity == "R" || $rarity == "SR"){echo "white";} else{echo "black";}?>" d="M0 80C0 53.49 21.49 32 48 32H144C170.5 32 192 53.49 192 80V96H384V80C384 53.49 405.5 32 432 32H528C554.5 32 576 53.49 576 80V176C576 202.5 554.5 224 528 224H432C405.5 224 384 202.5 384 176V160H192V176C192 177.7 191.9 179.4 191.7 180.1L272 288H368C394.5 288 416 309.5 416 336V432C416 458.5 394.5 480 368 480H272C245.5 480 224 458.5 224 432V336C224 334.3 224.1 332.6 224.3 331L144 224H48C21.49 224 0 202.5 0 176V80z"></path></svg>        </div>
            <p class="md:uppercase text-white md:font-bold m-1 md:mt-2">Investment tips</p>
        </div>
    </div>
</div>

<div>
    <div id="profile" class="">
        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Skills</h2>
        </div>
        <div class="flex flex-wrap font-[Anuphan]">

            <div id="NormalATK" class="h-min-70 w-full xl:w-1/2 mb-5 px-3">

                <div class="flex flex-col h-min-1/2 md:h-full border-2 border-[#33343a] bg-[#23242a] overflow-x-hidden">
                    <div class="grid grid-cols-[100%] md:grid-cols-[20%_60%_20%] md:gap-2 w-full h-22 bg-[#2c2d33] justify-center md:justify-between items-center">
                        <div class="flex h-9 md:h-[96%] w-full <?php echo esc_html($rarity); ?>-bg text-[#303030] items-center justify-center font-semibold font-[Anuphan]">
                            Normal Attack
                        </div>
                        <div class="flex flex-col justify-center md:justify-start items-center mb-1 md:mb-0 md:items-start md:p-2 h-full">
                            <p class="font-bold text-white font-[Anuphan]">Normal Attack</p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] font-[Anuphan]"><?php echo esc_html($weapon) ?></p>
                        </div>
                    </div>
                    <div class="grid md:grid-cols-[33%_33%_33%] justify-between h-min-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Mode: <span class="text-white text-sm font-semibold"><?php if ($normal_atk['mode']): echo esc_html($normal_atk['mode']); endif; ?></span></p>
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Ammo: <span class="text-white text-sm font-semibold"><?php if ($normal_atk['ammo']): echo esc_html($normal_atk['ammo']); endif; ?></span></p>
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Reload: <span class="text-white text-sm font-semibold"><?php if ($normal_atk['reload']): echo esc_html($normal_atk['reload']); endif; ?></span></p>
                    </div>
                    <div class="h-full p-4">
                        <?php if ($normal_atk['desc_line']): 
                            while(have_rows('normal_attack_desc_line')): the_row();
                            $text = get_sub_field('text');
                            echo ($text);
                            endwhile; endif; ?>
                    </div>
                </div>

            </div>

            <div id="Skill1" class="h-min-70 w-full xl:w-1/2 mb-5 px-3">
                <?php
                    $skill_name = get_field('skill_1_skill_name');
                    if(!isset($skill_name)) {$skill_name = "SN Placeholder";}
                    $skill_type = get_field('skill_1_skill_t');
                    if(!isset($skill_type)) {$skill_type = "ST Placeholder";}
                    $skill_cd = get_field('skill_1_cd');
                    if(!isset($skill_cd)) {$skill_cd = "SCD Placeholder";}
                    $skill_lvl_desc = get_field('skill_1_levels');
                ?>

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-x-hidden">
                    <div class="grid grid-cols-[100%] md:grid-cols-[20%_60%_20%] md:gap-2 w-full h-min-22 bg-[#2c2d33] justify-center md:justify-between items-center">
                        <div class="flex h-9 md:h-[96%] w-full <?php echo esc_html($rarity); ?>-bg text-[#303030] items-center justify-center font-semibold font-[Anuphan]">
                            Skill 1
                        </div>
                        <div class="flex flex-col justify-center md:justify-start items-center md:items-start md:p-2 h-full">
                            <p class="font-bold text-white font-[Anuphan]"><?php echo esc_html($skill_name); ?></p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] font-[Anuphan]"><?php echo esc_html($skill_type); ?></p>
                        </div>
                        <div class="flex flex-row items-center h-min-5 w-full my-1 md:my-0 justify-between md:justify-center text-white transition-all font-[Anuphan] ">
                            <button id="s1-minus" class="font-bold text-[36px] md:text-[24px] ml-8 md:ml-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">-</button>
                            <p id="skill1-level" class="mx-4 text-[24px] md:text-[18px]">10</p>
                            <button id="s1-plus" class="font-bold text-[36px] md:text-[24px] mr-8 md:mr-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">+</button>
                        </div>
                    </div>
                    <div class="grid md:grid-cols-[33%_33%_33%] justify-between h-min-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold"><?php echo esc_html($skill_cd); ?></span></p>
                    </div>
                    <?php 
                    if ($skill_lvl_desc):
                        foreach ($skill_lvl_desc as $lvl => $desc): ?>
                    <div class="skill1-desc h-full p-4 " data-level="<?php echo $lvl + 1; ?>" style="<?php echo $lvl === 9 ? '' : 'display:none;'; ?>">
                        <?php echo ($desc['skill_desc']); ?>
                    </div>
                    <?php
                        endforeach;
                        endif;
                    ?>
                </div>
            </div>

            <div id="Skill2" class="h-min-70 w-full xl:w-1/2 mb-5 px-3">
                <?php
                    $skill_name = get_field('skill_2_skill_name');
                    if(!isset($skill_name)) {$skill_name = "SN Placeholder";}
                    $skill_type = get_field('skill_2_skill_t');
                    if(!isset($skill_type)) {$skill_type = "ST Placeholder";}
                    $skill_cd = get_field('skill_2_cd');
                    if(!isset($skill_cd)) {$skill_cd = "SCD Placeholder";}
                    $skill_lvl_desc = get_field('skill_2_levels');
                ?>

                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-x-hidden">
                    <div class="grid grid-cols-[100%] md:grid-cols-[20%_60%_20%] md:gap-2 w-full h-min-22 bg-[#2c2d33] justify-center md:justify-between items-center">
                        <div class="flex h-9 md:h-[96%] w-full <?php echo esc_html($rarity); ?>-bg text-[#303030] items-center justify-center font-semibold font-[Anuphan]">
                            Skill 2
                        </div>
                        <div class="flex flex-col justify-center md:justify-start items-center mb-1 md:mb-0 md:items-start md:p-2 h-full">
                            <p class="font-bold text-white font-[Anuphan]"><?php echo esc_html($skill_name); ?></p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] font-[Anuphan]"><?php echo esc_html($skill_type); ?></p>
                        </div>
                        <div class="flex flex-row items-center h-min-5 w-full my-1 md:my-0 justify-between md:justify-center text-white transition-all font-[Anuphan] ">
                            <button id="s2-minus" class="font-bold text-[36px] md:text-[24px] ml-8 md:ml-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">-</button>
                            <p id="skill2-level" class="mx-4 text-[24px] md:text-[18px]">10</p>
                            <button id="s2-plus" class="font-bold text-[36px] md:text-[24px] mr-8 md:mr-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">+</button>
                        </div>
                    </div>
                    <div class="grid md:grid-cols-[33%_33%_33%] justify-between h-min-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold"><?php echo esc_html($skill_cd); ?></span></p>
                    </div>
                    <?php 
                    if ($skill_lvl_desc):
                        foreach ($skill_lvl_desc as $lvl => $desc): ?>
                    <div class="skill2-desc h-full p-4 " data-level="<?php echo $lvl + 1; ?>" style="<?php echo $lvl === 9 ? '' : 'display:none;'; ?>">
                        <?php echo ($desc['skill_desc']); ?>
                    </div>
                    <?php
                        endforeach;
                        endif;
                    ?>
                </div>

            </div>

            <div id="Skill3" class="h-min-70 w-full xl:w-1/2 mb-5 px-3">
                <?php
                    $skill_name = get_field('skill_3_skill_name');
                    if(!isset($skill_name)) {$skill_name = "SN Placeholder";}
                    $skill_type = get_field('skill_3_skill_t');
                    if(!isset($skill_type)) {$skill_type = "ST Placeholder";}
                    $skill_cd = get_field('skill_3_cd');
                    if(!isset($skill_cd)) {$skill_cd = "SCD Placeholder";}
                    $skill_lvl_desc = get_field('skill_3_levels');
                ?>
                <div class="flex flex-col h-full border-2 border-[#33343a] bg-[#23242a] overflow-x-hidden">
                    <div class="grid grid-cols-[100%] md:grid-cols-[20%_60%_20%] md:gap-2 w-full h-min-22 bg-[#2c2d33] justify-center md:justify-between items-center">
                        <div class="flex h-9 md:h-[96%] w-full <?php echo esc_html($rarity); ?>-bg text-[#303030] items-center justify-center font-semibold font-[Anuphan]">
                            Burst
                        </div>
                        <div class="flex flex-col justify-center md:justify-start items-center mb-1 md:mb-0 md:items-start md:p-2 h-full">
                            <p class="font-bold text-white font-[Anuphan]"><?php echo esc_html($skill_name); ?></p>
                            <p class="text-sm text-[hsla(0,0%,100%,.75)] font-[Anuphan]"><?php echo esc_html($skill_type); ?></p>
                        </div>
                        <div class="flex flex-row items-center h-min-5 w-full my-1 md:my-0 justify-between md:justify-center text-white transition-all font-[Anuphan] ">
                            <button id="s3-minus" class="font-bold text-[36px] md:text-[24px] ml-8 md:ml-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">-</button>
                            <p id="skill3-level" class="mx-4 text-[24px] md:text-[18px]">10</p>
                            <button id="s3-plus" class="font-bold text-[36px] md:text-[24px] mr-8 md:mr-0 opacity-60 hover:opacity-90 cursor-pointer duration-500">+</button>
                        </div>
                    </div>
                    <div class="grid md:grid-cols-[33%_33%_33%] justify-between h-min-8 px-2 bg-[#36373d]">
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Burst: <span class="text-white text-sm font-semibold"><?php echo esc_html($burst) ?></span></p>
                        <p class="text-[hsla(0,0%,100%,.75)] text-sm">Cooldown: <span class="text-white text-sm font-semibold"><?php echo esc_html($skill_cd); ?></span></p>
                    </div>
                    <?php 
                    if ($skill_lvl_desc):
                        foreach ($skill_lvl_desc as $lvl => $desc): ?>
                    <div class="skill3-desc h-full p-4 " data-level="<?php echo $lvl + 1; ?>" style="<?php echo $lvl === 9 ? '' : 'display:none;'; ?>">
                        <?php echo ($desc['skill_desc']); ?>
                    </div>
                    <?php
                        endforeach;
                        endif;
                    ?>
                </div>

            </div>
            

        </div>

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Specialties</h2>
        </div>
        <div class="flex flex-wrap transition-all">
            <?php if(have_rows('specialities')) : 
                while (have_rows('specialities')): the_row();
                $speciality = get_sub_field('speciality');
                $desc = get_sub_field('spec_desc');
                $id = uniqid('popover_');
            ?>
            <div class="relative flex items-center">
                <div data-popover="<?php echo $id; ?>" class="popover-btn flex items-center py-2 px-3 mb-3 mr-3 border-b-4 border-[#484950] cursor-pointer bg-[#36373d] opacity-80 hover:opacity-100 duration-700 text-white">
                    <?php echo esc_html($speciality); ?>
                </div>
                <div id="<?php echo $id; ?>" class="h-min-full w-100 popover-content flex flex-row absolute w-min-10 hidden transition-opacity ease-in-out z-50 text-white duration-700" style="opacity: 0">
                    <div class="translate-y-4">
                        <svg height="16" width="8" xmlns="http://www.w3.org/2000/svg">
                            <polygon points="0,8 8,0 8,16" style="fill:#2b2c31;" />
                        </svg>
                    </div>
                    <div class="shadow-xl">
                        <h3 class="bg-[#2b2c31] font-bold px-4 py-3"><?php echo esc_html($speciality); ?></h3>
                        <div class="h-max-40 flex popover-body bg-[#36373d] p-4 text-[14px]"><?php echo esc_html($desc); ?></div>
                    </div>

                </div>
            </div>
            <?php endwhile; endif;?>
        </div>

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Voice Actors</h2>
        </div>
        <div class="flex flex-wrap items-center">
            <div class="w-full md:w-1/3 mb-3 px-3 h-16">
                <div class="flex flex-col justify-center items-center h-full p-2 bg-[#2c2d33] border-1 border-[#33343a] text-white font-[Anuphan] ">
                    <p class="opacity-75 uppercase font-semibold text-[14px]">ENG</p>
                    <p class="font-semibold"><?php if ($voice_ac['english_va']): echo esc_html($voice_ac['english_va']); endif; ?></p>
                </div>
            </div>
            <div class="w-full md:w-1/3 mb-3 px-3 h-16">
                <div class="flex flex-col justify-center items-center h-full p-2 bg-[#2c2d33] border-1 border-[#33343a] text-white font-[Anuphan] ">
                    <p class="opacity-75 uppercase font-semibold text-[14px]">JPN</p>
                    <p class="font-semibold"><?php if ($voice_ac['japaneese_va']): echo esc_html($voice_ac['japaneese_va']); endif; ?></p>
                </div>
            </div>
            <div class="w-full md:w-1/3 mb-3 px-3 h-16">
                <div class="flex flex-col justify-center items-center h-full p-2 bg-[#2c2d33] border-1 border-[#33343a] text-white font-[Anuphan] ">
                    <p class="opacity-75 uppercase font-semibold text-[14px]">KR</p>
                    <p class="font-semibold"><?php if ($voice_ac['korean_va']): echo esc_html($voice_ac['korean_va']); endif; ?></p>
                </div>
            </div>
        </div>

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Gallery</h2>
        </div>
        <div class="relative flex flex-wrap">
            <?php if($gallery): foreach ($gallery as $image): ?>
            <div class="h-auto w-full">
                <img loading="lazy" class="" src="<?php echo esc_url($image['url']); ?>" alt="#">
            </div>
            <?php endforeach; endif; ?>
        </div>

    </div>
    
    <div id="review" class="hidden">
        <?php
            $review_text = get_field('review_text');
            if(!isset($review_text)) {$review_text = "Review text...";}
        ?>
        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Review</h2>
        </div>
        <div class="h-min-21 bg-[#2b2c31] border-1 border-[#33343a] p-4 text-white font-[Anuphan]">
            <?php echo ($review_text); ?>
        </div>


        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Ratings</h2>
        </div>
        <div class="flex flex-wrap justify-between items-center text-white font-[Anuphan] transition-all">
            <div class="w-[49%] md:w-1/5 items-start mb-2">
                <?php tier_level(esc_html($tier_SL));?>
                <div class="flex justify-center">
                    <p>Story (low deficit)</p>
                </div>
            </div>

            <div class="w-[49%] md:w-1/5 mb-2">
                <?php tier_level(esc_html($tier_SH));?>
                <div class="flex justify-center">
                    <p>Story (high deficit)</p>
                </div>
            </div>

            <div class="w-[49%] md:w-1/5 mb-2">
                <?php tier_level(esc_html($tier_B));?>
                <div class="flex justify-center">
                    <p>Bossing</p>
                </div>
            </div>

            <div class="w-[49%] md:w-1/5 items-end mb-2">
                <?php tier_level(esc_html($tier_PVP));?>
                <div class="flex justify-center">
                    <p>PVP</p>
                </div>
            </div>

        </div>

    </div>
    
    <div id="investment-tips" class="hidden">

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Skill Investment</h2>
        </div>
        <div class="my-3 border-1 border-[#484950] transition-all">
            <div id="skill" class="h-13 bg-[#36373d] cursor-pointer">
                <div class="flex flex-row h-full w-full py-1 px-4 items-center justify-between text-white font-[Anuphan]">
                    <h2 class="justify-start select-none">Skill Investment explained</h2>
                    <svg id="arrow-skill" class="justify-end duration-300" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="24"> <path fill="currentColor" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"</svg>
                </div>
            </div>
            <div id="skill_explanation" class="h-min-128 bg-[#2c2d33] py-5 px-6 text-white font-[Anuphan] leading-6.5 duration-500 hidden">
                <p class="mb-3">Here's the explanation for all the numbers and colors used in the guide:</p>
                <ul class="pl-4 mb-4 list-disc">
                    <li><strong>10/5/7 </strong> means upgrading Skill 1 to lvl 10, Skill 2 to lvl 5, and Burst Skill to lvl 7,</li>
                    <li><strong class="yellow">Yellow</strong> means the immediate investment when u get the unit. There are 3 reasons for this:
                    <ul class="pl-8" style="list-style-type: circle;">
                        <li>If the unit is Meta or High Priority, it will have a starting investment of more than 1/1/1 (such as 4/4/4) depending on what the unit provides.</li>
                        <li>If the unit is Medium or Low Priority, 1/1/1 will be mentioned, meaning no immediate investment is required, and you can invest in this character if you need to use it according to the priority listed.</li>
                        <li>If we deem that a unit does not have usable skills to be meta for any gamemode, no investment will be mentioned.</li>
                    </ul></li>

                    <li><strong class="blue">Blue</strong> means minimum investment to take advantage of the Nikke's skills. There are 2 reasons for this:</li>
                    <ul class="pl-8" style="list-style-type: circle;">
                        <li>Sometimes, minimum investments are breakpoints such as for Noir or SAnis.</li>
                        <li>Sometimes, minimum investments are just the ideal way to progress to upgrade that unit, before moving on to Recommended and High.</li>
                    </ul>
                    <li><strong class="red">Red</strong> means recommended investment for F2P players,</li>
                    <li><strong class="purple">Purple</strong> means maximum recommended investment, in order to get the best out of the unit. You should only try to reach these investments if you have a surplus of Skill Books leftover.</li>
                </ul>
                <p class="mb-3">More info:</p>
                <ul class="pl-4 mb-4 list-disc">
                    <li>The skill investment list below features a lot of Level 4 and 7 because they are easier to understand. Any higher levels will cost a new type of resource.</li>
                    <li>However, you may choose to upgrade to Level 5 if you need a stronger effect instead of 4, as the increase in Blue Manual cost from Level 4 to 5 is still low. The leap only starts from Level 6 onward.</li>
                    <li>There is also a leap from Level 3 to 4, so if you want to save a tiny bit of Blue Manuals, then leave at 3 instead of 4.</li>
                </ul>
                
            </div>
        </div>

        <div class="h-min-28 mt-6 text-white font-[Anuphan]">
            <div class="hidden h-12 md:grid grid-cols-[25%_30%_30%_15%] border-x-1 border-b-1 border-[#484950] justify-between items-center text-[14px]">
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] items-center justify-center">
                    <p class="uppercase opacity-75">Character</p>
                </div>
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] items-center justify-center">
                    <p class="uppercase opacity-75">PVE Investment</p>
                </div>
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] justify-center items-center justify-center">
                    <p class="uppercase opacity-75">PVP Investment</p>
                </div>
                <div class="h-full flex border-t-1 border-[#484950] items-center justify-center">
                    <p class="uppercase opacity-75">Priority</p>
                </div>
            </div>
            <?php 
                $pve = get_field('skill_investment_pve');
                if(!isset($pve)) {$pve = "<p>-</p>";}
                $pvp = get_field('skill_investment_pvp');
                if(!isset($pvp)) {$pvp = "<p>-</p>";}
                $priority = get_field('gear_investment_priority');
                if(!isset($priority)) {$priority = "<p>-</p>";}
            ?>
            <div class="h-min-16 grid md:grid-cols-[25%_30%_30%_15%] gap-3 md:gap-0 bg-[#36373d] items-center justify-center md:justify-between border-t-1 md:border-t-0 border-x-1 border-b border-[#484950] text-[14px] py-2 md:py-0">
                <div class="char_prof h-full flex md:border-r-1 border-[#484950] items-center justify-center md:justify-start text-[16px] cursor-pointer" data-post-id="<?php echo get_the_ID(); ?>">
                    <div class="h-16 w-15 mr-2 border-b-4 icon-bg-<?php if(esc_html($fav_item) == "No") { echo esc_html($rarity);} else { echo "FI";} ?>">
                        <div class="h-full w-full bg-no-repeat bg-cover" style="background-image: url('<?php echo esc_html($character_icon) ?>');"></div>                       
                    </div>
                    <span><?php echo get_the_title($post_id)?></span>
                </div>
                <div class="h-full flex flex-col md:border-r-1 border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">PVE investment</p>
                    <?php echo $pve; ?>
                </div>
                <div class="h-full flex flex-col md:border-r-1 border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">PVP investment</p>
                    <?php echo $pvp; ?>
                </div>
                <div class="h-full flex flex-col border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">Priority</p>
                    <?php echo $priority; ?>
                </div>
            </div>
        </div>

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Gear Investment</h2>
        </div>
        <div class="my-3 border-1 border-[#484950] transition-all">
            <div id="gear" class="h-13 bg-[#36373d] cursor-pointer">
                <div class="flex flex-row h-full w-full py-1 px-4 items-center justify-between text-white font-[Anuphan]">
                    <h2 class="justify-start select-none">Gear Investment explained</h2>
                    <svg id="arrow-gear" class="justify-end duration-300" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="24"> <path fill="currentColor" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"</svg>
                </div>
            </div>
            <div id="gear_explanation" class="h-min-64 bg-[#2c2d33] py-5 px-6 text-white font-[Anuphan] leading-6.5 duration-500 ease-in-out hidden-sp">
                <p class="mb-3">This Overload (OL) Recommendations and Priority guide unravels in detail everything you need about a character in terms of priority, overload targets (effects), and order of acquisition, alongside some notes to explain our thinking process.</p>
                <p class="mb-3">For OL targets and order of acquisition, we decided to divide the target effects into several categories.</p>
                <ul class="pl-4 mb-4 list-disc">
                    <li><strong>Essential: </strong>With all gear combined, your unit must have the roll(s) prescribed as a minimum requirement. Example: Charge Speed on Alice. You cannot compromise on these rolls.</li>
                    <li><strong>Ideal: </strong>These rolls will improve your unit's performance significantly. Aim for 2 lines of Essential/Ideal per gear for maximum performance and the best Return on Investment (ROI). If you get 3, you are lucky. You can choose to only have 1 as well to save materials. Example: Elemental Damage on Scarlet.</li>

                    <li><strong>Passable: </strong>Low-priority line that has either limited value or the impact is not as strong as other rolls. Should this show up as a bonus together with a better line, you can choose to keep them. Example: Charge Speed on Red Hood.</li>
                </ul>
                <p class="mb-3">Overload effects are ordered by importance from Left to Right, which means anything on the left provides more value than the right. Effects that belong to the same group generate too similar an impact to make a difference (and are sometimes interchangeable). Try to follow this order as faithfully as possible for maximum mileage.</p>
                <p class="mb-4"><strong>Additional tips:</strong></p>
                <ul class="pl-4 mb-4 list-disc">
                    <li>Priority (PvE/PvP) isn't necessarily lower than Priority (Universal), which has no tag/label. It just indicates that this unit performs only in select types of content.</li>
                    <li>If a suggested effect has the number ×2 next to it, that means you should get the effect on at least 2 gear. The same idea applies to other numbers.</li>
                    <li>Focus on obtaining Essential(s) then you can start worrying about optimizing your rolls. Units require these to function, and the impact is too massive to ignore.</li>
                    <li>If a unit has no Essential(s), that means their performance is not that dependent on OL, but they can still benefit from good effects.</li>
                    <li>Remember that this is just a recommendation list, and attaining perfection is impossible. You will have to make some compromise, pick whichever rolls you desire the most, and conserve as much material as possible.</li>
                </ul>
                
            </div>
        </div>

        <div class="h-min-28 mt-6 text-white font-[Anuphan]">
            <div class="hidden h-12 md:grid grid-cols-[15%_25%_25%_25%_10%] border-x-1 border-b-1 border-[#484950] justify-between items-center text-[14px]">
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] items-center justify-center">
                    <p class="uppercase">Character</p>
                </div>
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] items-center justify-center">
                    <p class="uppercase red">Essential</p>
                </div>
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] justify-center items-center justify-center">
                    <p class="uppercase green">Ideal</p>
                </div>
                <div class="h-full flex border-t-1 border-r-1 border-[#484950] items-center justify-center">
                    <p class="uppercase yellow">Passable</p>
                </div>
                <div class="h-full flex border-t-1 border-[#484950] items-center justify-center">
                    <p class="uppercase">Priority</p>
                </div>
            </div>
            <?php 
                $essential = get_field('gear_investment_essential');
                if(!isset($essential)) {$essential = "<p>-</p>";}
                $ideal = get_field('gear_investment_ideal');
                if(!isset($ideal)) {$ideal = "<p>-</p>";}
                $passable = get_field('gear_investment_passable');
                if(!isset($passable)) {$passable = "<p>-</p>";}
                $priority = get_field('gear_investment_priority');
                if(!isset($priority)) {$priority = "<p>-</p>";}
                $explanation = get_field('gear_investment_explanation');
                if(!isset($explanation)) {$explanation = "-";}
            ?>
            <div class="h-min-16 grid md:grid-cols-[15%_25%_25%_25%_10%] gap-3 md:gap-0 bg-[#2c2d33] items-center justify-center md:justify-between border-t-1 md:border-t-0 border-x-1 border-b border-[#484950] text-[14px] py-2 md:py-0">
                <div class="char_prof h-full flex border-[#484950] md:border-r-1 items-center justify-center md:justify-start text-[16px] cursor-pointer" data-post-id="<?php echo get_the_ID(); ?>">
                    <div class="h-16 w-15 mr-2 border-b-4 icon-bg-<?php if(esc_html($fav_item) == "No") { echo esc_html($rarity);} else { echo "FI";} ?>">
                        <div class="h-full w-full bg-no-repeat bg-cover" style="background-image: url('<?php echo esc_html($character_icon) ?>');"></div>                       
                    </div>
                    <span><?php echo get_the_title($post_id)?></span>
                </div>
                <div class="h-full flex flex-col md:border-r-1  border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">Essential</p>
                    <?php echo $essential; ?>
                </div>
                <div class="h-full flex flex-col md:border-r-1 border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">Ideal</p>
                    <?php echo $ideal; ?>
                </div>
                <div class="h-full flex flex-col md:border-r-1 border-[#484950] items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">Passable</p>
                    <?php echo $passable; ?>
                </div>
                <div class="h-full flex flex-col items-center justify-center">
                    <p class="md:hidden opacity-75 text-[13px]">Priority</p>
                    <?php echo $priority; ?>
                </div>
                <div class="h-full flex flex-col items-center justify-center">
                    <p class="md:hidden "><?php echo $explanation; ?></p>
                </div>
            </div>
            <div class="hidden md:flex bg-[#36373d] border-x-1 border-b-1 border-[#484950] text-[14px] p-2">
                <p><?php echo $explanation; ?></p>
            </div>
        </div>

        <div class="flex flex-row items-center mt-[25px] mb-[15px] pb-[6px] border-b-2 <?php echo esc_html($rarity); ?>">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="square" class="<?php echo esc_html($rarity); ?>" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                <path d="M0 96C0 60.65 28.65 32 64 32H384C419.3 32 448 60.65 448 96V416C448 451.3 419.3 480 384 480H64C28.65 480 0 451.3 0 416V96z"></path>
            </svg>
            <h2 class="uppercase ml-2 text-white font-[Anuphan] font-bold text-[20px]">Cube Investment</h2>
        </div>
        <div class="w-full h-min-50 grid md:grid-cols-[50%_50%] gap-2 md:gap-0 font-[Anuphan] text-white my-5">
            <?php 
                $pre_cube = get_field('cube_investment_pre_overload');
                $post_cube = get_field('cube_investment_post_overload');
                $cube_expl = get_field('cube_investment_explanation');
                if(!$cube_expl){$cube_expl = '';}
            ?>
            <div class="h-full border-y-2 border-l-1 border-r-2 border-[#484950]">
                <div class="h-12 w-full flex bg-[#a592fc] text-black text-center items-center justify-center font-bold text-[18px]">
                    <p>Pre-overload</p>
                </div>
                <div class="h-min-20 p-3">
                <?php 
                if ($pre_cube):    
                foreach ($pre_cube as $cube) {
                    get_cube($cube);
                } endif; ?>                    
                </div>
            </div>
            <div class="h-full border-y-2 border-l-1 border-r-2 border-[#484950]">
                <div class="h-12 w-full flex bg-[#ff8ab5] text-black text-center items-center justify-center font-bold text-[18px]">
                    <p>Post-overload</p>
                </div>
                <div class="h-min-20 p-3">
                    <?php 
                    if ($post_cube):
                    foreach ($post_cube as $cube) {
                        get_cube($cube);
                    } endif;?>                          
                </div>
            </div>            
        </div>
        <div class="text-white font-[Anuphan]">
            <?php echo $cube_expl; ?>
        </div>
    </div>

</div>