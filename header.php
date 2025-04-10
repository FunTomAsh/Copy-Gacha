<!doctype html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <html lang="pl">
    <link href="./src/output.css" rel="stylesheet">
    <?php wp_head() ?>
</head>
<body <?php body_class(); ?> style="scrollbar-color: #1c1d21, #36373d; scrollbar-width: thin;">

<div class="flex flex-row h-[100%] w-[100%]">
    <div id="left-menu" class="hidden lg:block fixed top-0 left-0 w-[260px] flex flex-col border-r border-[#33343a] bg-[#1c1d21]">
        <div class="w-full h-[75px] border-b border-[#33343a] flex flex items-center justify-center">
            <div class="logo h-[75px] w-max-[152px] flex items-center justify-center">
                <a href="<?php echo home_url(); ?>">
                    <img id="logo" src="https://www.prydwen.gg/static/e5cca805ee22a6a5327c633bbab70f48/c5628/prydwen_logo_small.webp"
                            alt="https://www.prydwen.gg/static/c20213ad82f52dcc3a6670bb5006ef1e/dbb7e/prydwen_logo_min.webp" 
                            class="flex items-center justify-center lg:space-x-3">
                </a>
            </div>                        
        </div>
        <div id="left-menu-content-wrapper" class="h-screen w-full font-[Anuphan] overflow-y-auto overflow-x-hidden" style="scrollbar-color: #2c2d33 #36373d; scrollbar-width: thin;">
                <div id="left-menu-content">
                    <button id="game-switcher" class="w-full h-[60px] mb-[10px] flex items-center border-b border-[#33343a] cursor-pointer bg-[#23242a] transition-all duration-500 opacity-85 hover:opacity-100"
                        style="background-image: url('http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg');">
                        <ul class="w-full flex items-center justify-between px-8 py-2 text-white text-lg">
                            <li><span class="left-menu-text justify-start font-semibold">NIKKE</span></li>
                            <li><svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="window-restore" class="svg-inline--fa fa-window-restore " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18"><path fill="currentColor" d="M432 48H208C190.3 48 176 62.33 176 80V96H128V80C128 35.82 163.8 0 208 0H432C476.2 0 512 35.82 512 80V304C512 348.2 476.2 384 432 384H416V336H432C449.7 336 464 321.7 464 304V80C464 62.33 449.7 48 432 48zM320 128C355.3 128 384 156.7 384 192V448C384 483.3 355.3 512 320 512H64C28.65 512 0 483.3 0 448V192C0 156.7 28.65 128 64 128H320zM64 464H320C328.8 464 336 456.8 336 448V256H48V448C48 456.8 55.16 464 64 464z"></path></svg></li>
                        </ul>
                    </button>
                    <div class="ms-auto text-white flex flex-col items-center">
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                            <?php echo (is_front_page()) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url()?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="house" class="svg-inline--fa fa-house " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                    <path fill="currentColor" d="M575.8 255.5C575.8 273.5 560.8 287.6 543.8 287.6H511.8L512.5 447.7C512.5 450.5 512.3 453.1 512 455.8V472C512 494.1 494.1 512 472 512H456C454.9 512 453.8 511.1 452.7 511.9C451.3 511.1 449.9 512 448.5 512H392C369.9 512 352 494.1 352 472V384C352 366.3 337.7 352 320 352H256C238.3 352 224 366.3 224 384V472C224 494.1 206.1 512 184 512H128.1C126.6 512 125.1 511.9 123.6 511.8C122.4 511.9 121.2 512 120 512H104C81.91 512 64 494.1 64 472V360C64 359.1 64.03 358.1 64.09 357.2V287.6H32.05C14.02 287.6 0 273.5 0 255.5C0 246.5 3.004 238.5 10.01 231.5L266.4 8.016C273.4 1.002 281.4 0 288.4 0C295.4 0 303.4 2.004 309.5 7.014L564.8 231.5C572.8 238.5 576.9 246.5 575.8 255.5L575.8 255.5z"></path></svg>
                                <span class="left-menu-text ml-3">Home</span>
                            </span>
                            
                        </a>
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                            <?php echo (is_page('characters')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/characters/')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-group" class="svg-inline--fa fa-user-group " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" width="18">
                                    <path fill="currentColor" d="M224 256c70.7 0 128-57.31 128-128S294.7 0 224 0C153.3 0 96 57.31 96 128S153.3 256 224 256zM274.7 304H173.3c-95.73 0-173.3 77.6-173.3 173.3C0 496.5 15.52 512 34.66 512H413.3C432.5 512 448 496.5 448 477.3C448 381.6 370.4 304 274.7 304zM479.1 320h-73.85C451.2 357.7 480 414.1 480 477.3C480 490.1 476.2 501.9 470 512h138C625.7 512 640 497.6 640 479.1C640 391.6 568.4 320 479.1 320zM432 256C493.9 256 544 205.9 544 144S493.9 32 432 32c-25.11 0-48.04 8.555-66.72 22.51C376.8 76.63 384 101.4 384 128c0 35.52-11.93 68.14-31.59 94.71C372.7 243.2 400.8 256 432 256z"></path></svg>
                                <span class="left-menu-text ml-3">Characters</span>
                            </span>
                        </a>
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                            <?php echo (is_page('tier-list')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/tier-list/')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ranking-star" class="svg-inline--fa fa-ranking-star " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" width="18"><path fill="currentColor" d="M406.1 61.65C415.4 63.09 419.4 74.59 412.6 81.41L374.6 118.1L383.6 170.1C384.1 179.5 375.3 186.7 366.7 182.4L320.2 157.9L273.3 182.7C264.7 187 255 179.8 256.4 170.5L265.4 118.4L227.4 81.41C220.6 74.59 224.6 63.09 233.9 61.65L286.2 54.11L309.8 6.332C314.1-2.289 326.3-1.93 330.2 6.332L353.8 54.11L406.1 61.65zM384 256C401.7 256 416 270.3 416 288V480C416 497.7 401.7 512 384 512H256C238.3 512 224 497.7 224 480V288C224 270.3 238.3 256 256 256H384zM160 320C177.7 320 192 334.3 192 352V480C192 497.7 177.7 512 160 512H32C14.33 512 0 497.7 0 480V352C0 334.3 14.33 320 32 320H160zM448 416C448 398.3 462.3 384 480 384H608C625.7 384 640 398.3 640 416V480C640 497.7 625.7 512 608 512H480C462.3 512 448 497.7 448 480V416z"></path></svg>
                                <span class="left-menu-text ml-3">Tier List</span>
                            </span>
                        </a>
                        <hr class="w-full m-[10px] border-t border-[#33343a]">
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('guides/skill-investment')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/skill-investment')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="scroll" class="svg-inline--fa fa-scroll " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                    <path fill="currentColor" d="M48 32C21.5 32 0 53.5 0 80v64C0 152.9 7.125 160 16 160H96V80C96 53.5 74.5 32 48 32zM256 380.6V320h224V128c0-53-43-96-96-96H111.6C121.8 45.38 128 61.88 128 80V384c0 38.88 34.62 69.63 74.75 63.13C234.3 442 256 412.5 256 380.6zM288 352v32c0 52.88-43 96-96 96h272c61.88 0 112-50.13 112-112c0-8.875-7.125-16-16-16H288z"></path></svg>
                                <span class="left-menu-text ml-3">Skill Investment</span>
                            </span>
                        </a>
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('guides/overload-gear-recommendations')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/overload-gear-recommendations')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="hand-fist" class="svg-inline--fa fa-hand-fist " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                                    <path fill="currentColor" d="M224 180.4V32c0-17.67-14.31-32-32-32S160 14.33 160 32v144h40C208.5 176 216.5 177.7 224 180.4zM128 176V64c0-17.67-14.31-32-32-32S64 46.33 64 64v112.8C66.66 176.5 69.26 176 72 176H128zM288 192c17.69 0 32-14.33 32-32V64c0-17.67-14.31-32-32-32s-32 14.33-32 32v96C256 177.7 270.3 192 288 192zM384 96c-17.69 0-32 14.33-32 32v64c0 17.67 14.31 32 32 32s32-14.34 32-32.02V128C416 110.3 401.7 96 384 96zM350.9 246.2c-12.43-7.648-21.94-19.31-26.88-33.25C313.7 219.9 301.3 223.9 288 223.9c-7.641 0-14.87-1.502-21.66-3.957C269.1 228.6 272 238.1 272 248c0 39.77-32.25 72-72 72H128c-8.836 0-16-7.164-16-16C112 295.2 119.2 288 128 288h72c22.09 0 40-17.91 40-40S222.1 208 200 208h-128C49.91 208 32 225.9 32 248v63.41c0 33.13 16 64.56 42.81 84.13L128 434.2V512h224v-85.09c38.3-24.09 64-66.42 64-114.9V247.1C406.6 252.6 395.7 256 384 256C371.7 256 360.5 252.2 350.9 246.2z"></path></svg>
                                <span class="left-menu-text ml-3">Overload Gear</span>
                            </span>
                        </a>
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('/guides/harmony-cubes-suggestions')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/harmony-cubes-suggestions')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="boxes-stacked" class="svg-inline--fa fa-boxes-stacked " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                    <path fill="currentColor" d="M160 48C160 21.49 181.5 0 208 0H256V80C256 88.84 263.2 96 272 96H304C312.8 96 320 88.84 320 80V0H368C394.5 0 416 21.49 416 48V176C416 202.5 394.5 224 368 224H208C181.5 224 160 202.5 160 176V48zM96 288V368C96 376.8 103.2 384 112 384H144C152.8 384 160 376.8 160 368V288H208C234.5 288 256 309.5 256 336V464C256 490.5 234.5 512 208 512H48C21.49 512 0 490.5 0 464V336C0 309.5 21.49 288 48 288H96zM416 288V368C416 376.8 423.2 384 432 384H464C472.8 384 480 376.8 480 368V288H528C554.5 288 576 309.5 576 336V464C576 490.5 554.5 512 528 512H368C341.5 512 320 490.5 320 464V336C320 309.5 341.5 288 368 288H416z"></path></svg>
                                <span class="left-menu-text ml-3">Harmony Cubes</span>
                            </span>
                        </a>
                        <hr class="w-full m-[10px] border-t border-[#33343a]">
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('guides')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="book-open" class="svg-inline--fa fa-book-open " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                    <path fill="currentColor" d="M144.3 32.04C106.9 31.29 63.7 41.44 18.6 61.29c-11.42 5.026-18.6 16.67-18.6 29.15l0 357.6c0 11.55 11.99 19.55 22.45 14.65c126.3-59.14 219.8 11 223.8 14.01C249.1 478.9 252.5 480 256 480c12.4 0 16-11.38 16-15.98V80.04c0-5.203-2.531-10.08-6.781-13.08C263.3 65.58 216.7 33.35 144.3 32.04zM557.4 61.29c-45.11-19.79-88.48-29.61-125.7-29.26c-72.44 1.312-118.1 33.55-120.9 34.92C306.5 69.96 304 74.83 304 80.04v383.1C304 468.4 307.5 480 320 480c3.484 0 6.938-1.125 9.781-3.328c3.925-3.018 97.44-73.16 223.8-14c10.46 4.896 22.45-3.105 22.45-14.65l.0001-357.6C575.1 77.97 568.8 66.31 557.4 61.29z"></path></svg>
                                <span class="left-menu-text ml-3">Guides</span>
                            </span>
                        </a>
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('guides/pvp-intro')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/pvp-intro')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="gun" class="svg-inline--fa fa-gun " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                    <path fill="currentColor" d="M544 64h-16V56C528 42.74 517.3 32 504 32S480 42.74 480 56V64H43.17C19.33 64 0 83.33 0 107.2v89.66C0 220.7 19.33 240 43.17 240c21.26 0 36.61 20.35 30.77 40.79l-40.69 158.4C27.41 459.6 42.76 480 64.02 480h103.8c14.29 0 26.84-9.469 30.77-23.21L226.4 352h94.58c24.16 0 45.5-15.41 53.13-38.28L398.6 240h36.1c8.486 0 16.62-3.369 22.63-9.373L480 208h64c17.67 0 32-14.33 32-32V96C576 78.33 561.7 64 544 64zM328.5 298.6C327.4 301.8 324.4 304 320.9 304H239.1L256 240h92.02L328.5 298.6zM480 160H64V128h416V160z"></path></svg>
                                <span class="left-menu-text ml-3">PVP Guides</span>
                            </span>
                        </a>
                        <hr class="w-full m-[10px] border-t border-[#33343a]">
                        <a class="left-menu-icon h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                            <?php echo (is_page('blog')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/blog')?>">
                            <span class="flex flex-row">
                                <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="newspaper" class="svg-inline--fa fa-newspaper " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18">
                                    <path fill="currentColor" d="M480 32H128C110.3 32 96 46.33 96 64v336C96 408.8 88.84 416 80 416S64 408.8 64 400V96H32C14.33 96 0 110.3 0 128v288c0 35.35 28.65 64 64 64h384c35.35 0 64-28.65 64-64V64C512 46.33 497.7 32 480 32zM272 416h-96C167.2 416 160 408.8 160 400C160 391.2 167.2 384 176 384h96c8.836 0 16 7.162 16 16C288 408.8 280.8 416 272 416zM272 320h-96C167.2 320 160 312.8 160 304C160 295.2 167.2 288 176 288h96C280.8 288 288 295.2 288 304C288 312.8 280.8 320 272 320zM432 416h-96c-8.836 0-16-7.164-16-16c0-8.838 7.164-16 16-16h96c8.836 0 16 7.162 16 16C448 408.8 440.8 416 432 416zM432 320h-96C327.2 320 320 312.8 320 304C320 295.2 327.2 288 336 288h96C440.8 288 448 295.2 448 304C448 312.8 440.8 320 432 320zM448 208C448 216.8 440.8 224 432 224h-256C167.2 224 160 216.8 160 208v-96C160 103.2 167.2 96 176 96h256C440.8 96 448 103.2 448 112V208z"></path></svg>
                                <span class="left-menu-text ml-3">Blog</span>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
    </div>
    <div id="right-main" class="flex flex-col w-full h-min-[100vh] lg:ml-[260px]">
        <nav id="top-nav" class="fixed top-0 left-0 lg:left-[260px] right-0 h-[60px] lg:h-[75px] flex flex-row bg-[#1c1d21] border-b-1 border-[#33343a] items-center justify-between py-4 px-2 z-15">
            <ul class="p-2 flex flex-row jusify-start items-center" >
                <li class="hidden lg:inline-block px-[12px] py-[10px]">
                    <button id="btn-collapse" class="text-white cursor-pointer flex items-center" type="button" style="transform: scaleX(-1);">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" class="" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="24">
                        <path fill="currentColor" d="M416 32h-64c-17.67 0-32 14.33-32 32s14.33 32 32 32h64c17.67 0 32 14.33 32 32v256c0 17.67-14.33 32-32 32h-64c-17.67 0-32 14.33-32 32s14.33 32 32 32h64c53.02 0 96-42.98 96-96V128C512 74.98 469 32 416 32zM342.6 233.4l-128-128c-12.51-12.51-32.76-12.49-45.25 0c-12.5 12.5-12.5 32.75 0 45.25L242.8 224H32C14.31 224 0 238.3 0 256s14.31 32 32 32h210.8l-73.38 73.38c-12.5 12.5-12.5 32.75 0 45.25s32.75 12.5 45.25 0l128-128C355.1 266.1 355.1 245.9 342.6 233.4z"></path></svg>
                    </button>
                </li>
                <li class="inline-block lg:hidden px-[12px] py-[10px]">
                    <button id="menu-mobile" class="text-white cursor-pointer flex items-center" type="button">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" class="h-[18px] w-[24px]" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="24">
                        <path fill="currentColor" d="M0 96C0 78.33 14.33 64 32 64H416C433.7 64 448 78.33 448 96C448 113.7 433.7 128 416 128H32C14.33 128 0 113.7 0 96zM0 256C0 238.3 14.33 224 32 224H416C433.7 224 448 238.3 448 256C448 273.7 433.7 288 416 288H32C14.33 288 0 273.7 0 256zM416 448H32C14.33 448 0 433.7 0 416C0 398.3 14.33 384 32 384H416C433.7 384 448 398.3 448 416C448 433.7 433.7 448 416 448z"></path></svg>
                    </button>
                </li>
                <li class="inline-block lg:hidden px-[12px] py-[10px]">
                    <button id="game-switcher-mobile" class="text-white cursor-pointer flex items-center" type="button">
                    <svg aria-hidden="true" focusable="false" data-prefix="fas" class="h-[18px] w-[24px]" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="24">
                        <path fill="currentColor" d="M449.9 39.96l-48.5 48.53C362.5 53.19 311.4 32 256 32C161.5 32 78.59 92.34 49.58 182.2c-5.438 16.81 3.797 34.88 20.61 40.28c16.97 5.5 34.86-3.812 40.3-20.59C130.9 138.5 189.4 96 256 96c37.96 0 73 14.18 100.2 37.8L311.1 178C295.1 194.8 306.8 223.4 330.4 224h146.9C487.7 223.7 496 215.3 496 204.9V59.04C496 34.99 466.9 22.95 449.9 39.96zM441.8 289.6c-16.94-5.438-34.88 3.812-40.3 20.59C381.1 373.5 322.6 416 256 416c-37.96 0-73-14.18-100.2-37.8L200 334C216.9 317.2 205.2 288.6 181.6 288H34.66C24.32 288.3 16 296.7 16 307.1v145.9c0 24.04 29.07 36.08 46.07 19.07l48.5-48.53C149.5 458.8 200.6 480 255.1 480c94.45 0 177.4-60.34 206.4-150.2C467.9 313 458.6 294.1 441.8 289.6z"></path></svg>
                    </button>
                </li>
            </ul>
            <a class="lg:hidden justify-center items-center" href="<?php echo home_url()?>">
                <img src="https://www.prydwen.gg/static/c20213ad82f52dcc3a6670bb5006ef1e/dbb7e/prydwen_logo_min.webp">
            </a>
            <ul id="right-links" class="flex flex-row items-center justify-end text-white font-[Anuphan] font-medium space-x-2 p-3">
                <li class="hidden lg:block"><a href="#" class="flex flex-row items-center px-5 py-3 text-white bg-[#c267ec] hover:bg-purple-300 transition-all duration-500">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitch" class="h-5 w-5" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="24">
                        <path fill="currentColor" d="M391.2 103.5H352.5v109.7h38.63zM285 103H246.4V212.8H285zM120.8 0 24.31 91.42V420.6H140.1V512l96.53-91.42h77.25L487.7 256V0zM449.1 237.8l-77.22 73.12H294.6l-67.6 64v-64H140.1V36.58H449.1z"></path>
                    </svg>
                    <span class="hidden lg:inline-block ml-2">Our Partners</span>
                </a></li>
                <li><a href="#" class="flex flex-row items-center px-5 py-3 text-white bg-[#009eec] hover:bg-[#1aadf7] transition-all duration-500">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="discord" class="h-5 w-5" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" width="24">
                        <path fill="currentColor" d="M524.5 69.84a1.5 1.5 0 0 0 -.764-.7A485.1 485.1 0 0 0 404.1 32.03a1.816 1.816 0 0 0 -1.923 .91 337.5 337.5 0 0 0 -14.9 30.6 447.8 447.8 0 0 0 -134.4 0 309.5 309.5 0 0 0 -15.14-30.6 1.89 1.89 0 0 0 -1.924-.91A483.7 483.7 0 0 0 116.1 69.14a1.712 1.712 0 0 0 -.788 .676C39.07 183.7 18.19 294.7 28.43 404.4a2.016 2.016 0 0 0 .765 1.375A487.7 487.7 0 0 0 176 479.9a1.9 1.9 0 0 0 2.063-.676A348.2 348.2 0 0 0 208.1 430.4a1.86 1.86 0 0 0 -1.019-2.588 321.2 321.2 0 0 1 -45.87-21.85 1.885 1.885 0 0 1 -.185-3.126c3.082-2.309 6.166-4.711 9.109-7.137a1.819 1.819 0 0 1 1.9-.256c96.23 43.92 200.4 43.92 295.5 0a1.812 1.812 0 0 1 1.924 .233c2.944 2.426 6.027 4.851 9.132 7.16a1.884 1.884 0 0 1 -.162 3.126 301.4 301.4 0 0 1 -45.89 21.83 1.875 1.875 0 0 0 -1 2.611 391.1 391.1 0 0 0 30.01 48.81 1.864 1.864 0 0 0 2.063 .7A486 486 0 0 0 610.7 405.7a1.882 1.882 0 0 0 .765-1.352C623.7 277.6 590.9 167.5 524.5 69.84zM222.5 337.6c-28.97 0-52.84-26.59-52.84-59.24S193.1 219.1 222.5 219.1c29.67 0 53.31 26.82 52.84 59.24C275.3 310.1 251.9 337.6 222.5 337.6zm195.4 0c-28.97 0-52.84-26.59-52.84-59.24S388.4 219.1 417.9 219.1c29.67 0 53.31 26.82 52.84 59.24C470.7 310.1 447.5 337.6 417.9 337.6z"></path>
                    </svg>
                    <span class="hidden lg:inline-block ml-2">Our Discord</span>
                </a></li>
                <li><a href="#" class="flex flex-row items-center px-5 py-3 text-white bg-[#f75058] hover:bg-red-500 transition-all duration-500 no-underline">
                    <img src="http://localhost/wordpress/wp-content/uploads/2025/02/kofi.png" alt="Icon" class="h-5 w-6">
                    <span class="hidden lg:inline-block ml-2">Buy us a Ko-Fi</span>
                </a></li>
            </ul>
        </nav>
        <div id="main-body" class="relative w-full h-min-[100vh-75px] bg-[#23242a] px-[20px] lg:px-[75px] pt-[40px] lg:pt-[75px] pb-[20px] z-1 overflow-x-hidden">
            <div class="absolute top-0 left-0 w-full h-[1000px] bg-no-repeat bg-cover z-[-5] overflow-y-hidden"
            style="background-image: 
                linear-gradient(to bottom, rgba(35, 36, 42, 0), rgba(35, 36, 42, 1)),
                url('http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg'); 
                background-position-x: 50%;
                background-position-y: 0px;">
            </div>