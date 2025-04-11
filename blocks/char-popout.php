<?php
    if (!isset($post_id)) {
        $post_id = get_the_ID();
    }

    $character_icon = get_field('charcter_icon', $post_id);
    if(!isset($character_icon)) {$character_icon = "http://localhost/wordpress/wp-content/uploads/2025/02/AliceLove.png";}
    $rarity = get_field('rarity', $post_id);
    if(!isset($rarity)) {$rarity = "Rarity";}
    $fav_item = get_field('favorite_item', $post_id);
    if(!isset($fav_item)) {$fav_item = "No";}
    $tier_SL = get_field('story_low_deficit', $post_id);
    if(!isset($tier_SL)) {$tier_SL = "Tier";}
    $tier_SH = get_field('story_high_deficit', $post_id);
    if(!isset($tier_SH)) {$tier_SH = "Tier";}
    $tier_B = get_field('bossing', $post_id);
    if(!isset($tier_B)) {$tier_B = "Tier";}
    $tier_PVP = get_field('pvp', $post_id);
    if(!isset($tier_PVP)) {$tier_PVP = "Tier";}
    $role = get_field('role', $post_id);
    if(!isset($role)) {$role = "Role";}
    $burst = get_field('burst', $post_id);
    if(!isset($burst)) {$burst = "Burst";}
    $burst_cd = get_field('burst_cd', $post_id);
    if(!isset($burst_cd)) {$burst_cd = "CD";}
    $weapon = get_field('weapon', $post_id);
    if(!isset($weapon)) {$weapon = "Wpn";}
    $element = get_field('element', $post_id);
    if(!isset($element)) {$element = "Ele";}
    $faction = get_field('faction', $post_id);
    if(!isset($faction)) {$faction = "Faction";}
?>

<div class="flex flex-col items-center h-min-88 w-85 text-white">
    <div class="flex flex-col items-center justify-between h-86 w-full bg-[#23242a] border-1 border-[#484950] p-3">
        <div class="flex flex-col items-center justify-center">
            <div class="h-20 w-20 mr-2 border-b-4 icon-bg-<?php if(esc_html($fav_item) == "No") { echo esc_html($rarity);} else { echo "FI";} ?>">
                <div class="h-full w-full bg-no-repeat bg-cover" decoding="async" loading="lazy"  style="background-image: url('<?php echo esc_html($character_icon) ?>');"></div>                       
            </div> 
            <p class="text-[20px] font-bold mt-2 mb-1"><?php echo get_the_title($post_id)?></p>
            <div class="h-10 flex items-center justify-between my-3">
                <div class="h-full flex bg-[#36373d] items-center px-2 m-1 border-b-3 border-white">
                    <?php get_icon($element, 25, 35); ?>
                </div>
                <div class="h-full flex bg-[#36373d] items-center px-2 m-1 border-b-3 border-white">
                    <?php get_icon($weapon, 40, 35); ?>
                </div>
                <div class="h-full flex bg-[#36373d] items-center px-2 m-1 border-b-3 border-white">
                    <?php get_icon($faction, 30, 35); ?>
                </div>
                <div class="h-full flex bg-[#36373d] items-center px-2 m-1 border-b-3 border-white">
                    <p class="opacity-60 leading-4">Burst: <?php echo esc_html($burst); ?> - CD <?php echo esc_html($burst_cd); ?></p>
                </div>
            </div>
        </div>
        <div class="flex flex-wrap m-2 justify-between items-center text-white font-[Anuphan] transition-all">
            <div class="w-[49%] mb-1">
                <div class="flex p-0.5 mb-1 bg-<?php echo esc_html($tier_SL)?> justify-center font-bold text-[20px] text-black cursor-pointer duration-700 hover:brightness-120">
                    <?php echo esc_html($tier_SL);?>
                </div>
                <div class="flex justify-center">
                    <p>Story (low deficit)</p>
                </div>
            </div>

            <div class="w-[49%] mb-1">
                <div class="flex p-0.5 mb-1 bg-<?php echo esc_html($tier_SH)?> justify-center font-bold text-[20px] text-black cursor-pointer duration-700 hover:brightness-120">
                    <?php echo esc_html($tier_SH);?>
                </div>
                <div class="flex justify-center">
                    <p>Story (high deficit)</p>
                </div>
            </div>

            <div class="w-[49%] mb-1">
                <div class="flex p-0.5 mb-1 bg-<?php echo esc_html($tier_B)?> justify-center font-bold text-[20px] text-black cursor-pointer duration-700 hover:brightness-120">
                    <?php echo esc_html($tier_B);?>
                </div>
                <div class="flex justify-center">
                    <p>Bossing</p>
                </div>
            </div>

            <div class="w-[49%] mb-1">
                <div class="flex p-0.5 mb-1 bg-<?php echo esc_html($tier_PVP)?> justify-center font-bold text-[20px] text-black cursor-pointer duration-700 hover:brightness-120">
                    <?php echo esc_html($tier_PVP);?>
                </div>
                <div class="flex justify-center">
                    <p>PVP</p>
                </div>
            </div>

        </div>   
    </div>
    <div class="">
        <svg height="8" width="16" xmlns="http://www.w3.org/2000/svg">
            <polygon points="0,0 8,8 16,0" style="fill:#484950;" />
        </svg>
    </div>
</div>