            
            <footer class="pb-[45px] pt-[60px] z-40">
            <div class="flex items-center justify-between text-center text-[hsla(0,0%,100%,.9)] text-size-8 font-[Anuphan]">
                <a href="#" class="justify-start">Privacy Policy</a>
                <p class="justify-end">Copyright © 2025 Prydwen.gg</p>
            </div>
        </footer>
        </div>
        
    </div>
</div>




<div id="bg-shadow" class="hidden fixed top-0 left-0 w-screen h-screen bg-[#000] opacity-50 z-20"></div>
<div id="offcanvas-game-switcher"
    class="fixed top-0 w-[400px] bg-[#1c1d21] shadow-lg transition-all duration-300 z-50 font-[Anuphan]" style="left: -400px;">
    
    <div class="h-[59px] flex flex-row justify-between items-center p-4 border-b border-[#33343a]">
        <a href="<?php echo home_url(); ?>">
            <img src="https://www.prydwen.gg/static/e5cca805ee22a6a5327c633bbab70f48/c5628/prydwen_logo_small.webp"
                alt="Logo" class="">
        </a>
        <button id="close-offcanvas" class="w-[1em] h-[1em] p-[.5rem] flex items-center text-gray-500 hover:text-white text-4xl font-thin cursor-pointer">&times;</button>
    </div>

    <div id="offcanvas-content" class="h-screen flex flex-col p-4 overflow-y-auto" style="scrollbar-color: #1c1d21 #36373d; scrollbar-width: thin;">
        <p class="text-white text-lg mb-4">Quickly switch to another game</p>
        <div id="game-box-container" class="flex flex-wrap justify-between">
            <a class="game-box w-full lg:w-[49%] bg-[#23242a] opacity-85 text-white border-2 border-[#33343a] hover:border-gray-500 transition-all duration-500 p-[15px] mb-[5px] text-center bg-[url('http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg')] bg-no-repeat bg-cover" 
            href="#" data-bg="http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg">
                NIKKE
            </a>
            <a class="game-box w-full lg:w-[49%] bg-[#23242a] opacity-85 text-white border-2 border-[#33343a] hover:border-gray-500 transition-all duration-500 p-[15px] mb-[5px] text-center bg-[url('http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg')] bg-no-repeat bg-cover" 
            href="#" data-bg="http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg">
                NIKKE
            </a>
            <a class="game-box w-full lg:w-[49%] bg-[#23242a] opacity-85 text-white border-2 border-[#33343a] hover:border-gray-500 transition-all duration-500 p-[15px] mb-[5px] text-center bg-[url('http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg')] bg-no-repeat bg-cover" 
            href="#" data-bg="http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg">
                NIKKE
            </a>
            <a class="game-box w-full lg:w-[49%] bg-[#23242a] opacity-85 text-white border-2 border-[#33343a] hover:border-gray-500 transition-all duration-500 p-[15px] mb-[5px] text-center bg-[url('http://localhost/wordpress/wp-content/uploads/2025/02/bg.jpg')] bg-no-repeat bg-cover" 
            href="#" data-bg="http://localhost/wordpress/wp-content/uploads/2025/03/bg-fs.jpg">
                NIKKE
            </a>
        </div>
    </div>
</div>
<div id="offcanvas-menu" class="offcanvas fixed top-0 w-[400px] bg-[#1c1d21] shadow-lg transition-all duration-300 z-50 font-[Anuphan]" style="left: -400px;">
    <div class="h-[59px] flex flex-row justify-between items-center p-4 border-b border-[#33343a]">
        <a href="<?php echo home_url(); ?>">
            <img src="https://www.prydwen.gg/static/e5cca805ee22a6a5327c633bbab70f48/c5628/prydwen_logo_small.webp"
                alt="Logo" class="">
        </a>
        <button id="close-offcanvas-menu" class="w-[1em] h-[1em] p-[.5rem] flex items-center text-gray-500 hover:text-white text-4xl font-thin cursor-pointer">&times;</button>
    </div>
    <div id="oc-left-menu-content-wrapper" class="h-screen w-full font-[Anuphan] overflow-y-auto overflow-x-hidden" style="scrollbar-color: #1c1d21 #36373d; scrollbar-width: thin;">
            <div id="oc-left-menu-content" class="mt-[10px]">
                <div class="ms-auto text-white flex flex-col items-center">
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                        <?php echo (is_front_page()) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url()?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="house" class="svg-inline--fa fa-house " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                <path fill="currentColor" d="M575.8 255.5C575.8 273.5 560.8 287.6 543.8 287.6H511.8L512.5 447.7C512.5 450.5 512.3 453.1 512 455.8V472C512 494.1 494.1 512 472 512H456C454.9 512 453.8 511.1 452.7 511.9C451.3 511.1 449.9 512 448.5 512H392C369.9 512 352 494.1 352 472V384C352 366.3 337.7 352 320 352H256C238.3 352 224 366.3 224 384V472C224 494.1 206.1 512 184 512H128.1C126.6 512 125.1 511.9 123.6 511.8C122.4 511.9 121.2 512 120 512H104C81.91 512 64 494.1 64 472V360C64 359.1 64.03 358.1 64.09 357.2V287.6H32.05C14.02 287.6 0 273.5 0 255.5C0 246.5 3.004 238.5 10.01 231.5L266.4 8.016C273.4 1.002 281.4 0 288.4 0C295.4 0 303.4 2.004 309.5 7.014L564.8 231.5C572.8 238.5 576.9 246.5 575.8 255.5L575.8 255.5z"></path></svg>
                            <span class="ml-3">Home</span>
                        </span>
                        
                    </a>
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                        <?php echo (is_page('about')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/about')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user-group" class="svg-inline--fa fa-user-group " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" width="18">
                                <path fill="currentColor" d="M224 256c70.7 0 128-57.31 128-128S294.7 0 224 0C153.3 0 96 57.31 96 128S153.3 256 224 256zM274.7 304H173.3c-95.73 0-173.3 77.6-173.3 173.3C0 496.5 15.52 512 34.66 512H413.3C432.5 512 448 496.5 448 477.3C448 381.6 370.4 304 274.7 304zM479.1 320h-73.85C451.2 357.7 480 414.1 480 477.3C480 490.1 476.2 501.9 470 512h138C625.7 512 640 497.6 640 479.1C640 391.6 568.4 320 479.1 320zM432 256C493.9 256 544 205.9 544 144S493.9 32 432 32c-25.11 0-48.04 8.555-66.72 22.51C376.8 76.63 384 101.4 384 128c0 35.52-11.93 68.14-31.59 94.71C372.7 243.2 400.8 256 432 256z"></path></svg>
                            <span class="ml-3">Characters</span>
                        </span>
                    </a>
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150
                        <?php echo (is_page('tier-list')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/tier-list')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ranking-star" class="svg-inline--fa fa-ranking-star " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" width="18"><path fill="currentColor" d="M406.1 61.65C415.4 63.09 419.4 74.59 412.6 81.41L374.6 118.1L383.6 170.1C384.1 179.5 375.3 186.7 366.7 182.4L320.2 157.9L273.3 182.7C264.7 187 255 179.8 256.4 170.5L265.4 118.4L227.4 81.41C220.6 74.59 224.6 63.09 233.9 61.65L286.2 54.11L309.8 6.332C314.1-2.289 326.3-1.93 330.2 6.332L353.8 54.11L406.1 61.65zM384 256C401.7 256 416 270.3 416 288V480C416 497.7 401.7 512 384 512H256C238.3 512 224 497.7 224 480V288C224 270.3 238.3 256 256 256H384zM160 320C177.7 320 192 334.3 192 352V480C192 497.7 177.7 512 160 512H32C14.33 512 0 497.7 0 480V352C0 334.3 14.33 320 32 320H160zM448 416C448 398.3 462.3 384 480 384H608C625.7 384 640 398.3 640 416V480C640 497.7 625.7 512 608 512H480C462.3 512 448 497.7 448 480V416z"></path></svg>
                            <span class="ml-3">Tier List</span>
                        </span>
                    </a>
                    <hr class="w-full m-[10px] border-t border-[#33343a]">
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('guides/skill-investment')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/skill-investment')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="scroll" class="svg-inline--fa fa-scroll " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                <path fill="currentColor" d="M48 32C21.5 32 0 53.5 0 80v64C0 152.9 7.125 160 16 160H96V80C96 53.5 74.5 32 48 32zM256 380.6V320h224V128c0-53-43-96-96-96H111.6C121.8 45.38 128 61.88 128 80V384c0 38.88 34.62 69.63 74.75 63.13C234.3 442 256 412.5 256 380.6zM288 352v32c0 52.88-43 96-96 96h272c61.88 0 112-50.13 112-112c0-8.875-7.125-16-16-16H288z"></path></svg>
                            <span class="ml-3">Skill Investment</span>
                        </span>
                    </a>
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('guides/overload-gear-recommendations')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/overload-gear-recommendations')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="hand-fist" class="svg-inline--fa fa-hand-fist " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width="18">
                                <path fill="currentColor" d="M224 180.4V32c0-17.67-14.31-32-32-32S160 14.33 160 32v144h40C208.5 176 216.5 177.7 224 180.4zM128 176V64c0-17.67-14.31-32-32-32S64 46.33 64 64v112.8C66.66 176.5 69.26 176 72 176H128zM288 192c17.69 0 32-14.33 32-32V64c0-17.67-14.31-32-32-32s-32 14.33-32 32v96C256 177.7 270.3 192 288 192zM384 96c-17.69 0-32 14.33-32 32v64c0 17.67 14.31 32 32 32s32-14.34 32-32.02V128C416 110.3 401.7 96 384 96zM350.9 246.2c-12.43-7.648-21.94-19.31-26.88-33.25C313.7 219.9 301.3 223.9 288 223.9c-7.641 0-14.87-1.502-21.66-3.957C269.1 228.6 272 238.1 272 248c0 39.77-32.25 72-72 72H128c-8.836 0-16-7.164-16-16C112 295.2 119.2 288 128 288h72c22.09 0 40-17.91 40-40S222.1 208 200 208h-128C49.91 208 32 225.9 32 248v63.41c0 33.13 16 64.56 42.81 84.13L128 434.2V512h224v-85.09c38.3-24.09 64-66.42 64-114.9V247.1C406.6 252.6 395.7 256 384 256C371.7 256 360.5 252.2 350.9 246.2z"></path></svg>
                            <span class="ml-3">Overload Gear</span>
                        </span>
                    </a>
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('/guides/harmony-cubes-suggestions')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/harmony-cubes-suggestions')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="boxes-stacked" class="svg-inline--fa fa-boxes-stacked " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                <path fill="currentColor" d="M160 48C160 21.49 181.5 0 208 0H256V80C256 88.84 263.2 96 272 96H304C312.8 96 320 88.84 320 80V0H368C394.5 0 416 21.49 416 48V176C416 202.5 394.5 224 368 224H208C181.5 224 160 202.5 160 176V48zM96 288V368C96 376.8 103.2 384 112 384H144C152.8 384 160 376.8 160 368V288H208C234.5 288 256 309.5 256 336V464C256 490.5 234.5 512 208 512H48C21.49 512 0 490.5 0 464V336C0 309.5 21.49 288 48 288H96zM416 288V368C416 376.8 423.2 384 432 384H464C472.8 384 480 376.8 480 368V288H528C554.5 288 576 309.5 576 336V464C576 490.5 554.5 512 528 512H368C341.5 512 320 490.5 320 464V336C320 309.5 341.5 288 368 288H416z"></path></svg>
                            <span class="ml-3">Harmony Cubes</span>
                        </span>
                    </a>
                    <hr class="w-full m-[10px] border-t border-[#33343a]">
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('guides')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="book-open" class="svg-inline--fa fa-book-open " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                <path fill="currentColor" d="M144.3 32.04C106.9 31.29 63.7 41.44 18.6 61.29c-11.42 5.026-18.6 16.67-18.6 29.15l0 357.6c0 11.55 11.99 19.55 22.45 14.65c126.3-59.14 219.8 11 223.8 14.01C249.1 478.9 252.5 480 256 480c12.4 0 16-11.38 16-15.98V80.04c0-5.203-2.531-10.08-6.781-13.08C263.3 65.58 216.7 33.35 144.3 32.04zM557.4 61.29c-45.11-19.79-88.48-29.61-125.7-29.26c-72.44 1.312-118.1 33.55-120.9 34.92C306.5 69.96 304 74.83 304 80.04v383.1C304 468.4 307.5 480 320 480c3.484 0 6.938-1.125 9.781-3.328c3.925-3.018 97.44-73.16 223.8-14c10.46 4.896 22.45-3.105 22.45-14.65l.0001-357.6C575.1 77.97 568.8 66.31 557.4 61.29z"></path></svg>
                            <span class="ml-3">Guides</span>
                        </span>
                    </a>
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('guides/pvp-intro')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/guides/pvp-intro')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="gun" class="svg-inline--fa fa-gun " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" width="18">
                                <path fill="currentColor" d="M544 64h-16V56C528 42.74 517.3 32 504 32S480 42.74 480 56V64H43.17C19.33 64 0 83.33 0 107.2v89.66C0 220.7 19.33 240 43.17 240c21.26 0 36.61 20.35 30.77 40.79l-40.69 158.4C27.41 459.6 42.76 480 64.02 480h103.8c14.29 0 26.84-9.469 30.77-23.21L226.4 352h94.58c24.16 0 45.5-15.41 53.13-38.28L398.6 240h36.1c8.486 0 16.62-3.369 22.63-9.373L480 208h64c17.67 0 32-14.33 32-32V96C576 78.33 561.7 64 544 64zM328.5 298.6C327.4 301.8 324.4 304 320.9 304H239.1L256 240h92.02L328.5 298.6zM480 160H64V128h416V160z"></path></svg>
                            <span class="ml-3">PVP Guides</span>
                        </span>
                    </a>
                    <hr class="w-full m-[10px] border-t border-[#33343a]">
                    <a class="h-[52.4px] w-full px-[30px] py-[10px] flex items-center justify-start transition-all duration-150 
                        <?php echo (is_page('blog')) ? 'opacity-100" aria-current="active"' : 'opacity-80 hover:opacity-100" '; ?> href="<?php echo home_url('/blog')?>">
                        <span class="flex flex-row">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="newspaper" class="svg-inline--fa fa-newspaper " role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="18">
                                <path fill="currentColor" d="M480 32H128C110.3 32 96 46.33 96 64v336C96 408.8 88.84 416 80 416S64 408.8 64 400V96H32C14.33 96 0 110.3 0 128v288c0 35.35 28.65 64 64 64h384c35.35 0 64-28.65 64-64V64C512 46.33 497.7 32 480 32zM272 416h-96C167.2 416 160 408.8 160 400C160 391.2 167.2 384 176 384h96c8.836 0 16 7.162 16 16C288 408.8 280.8 416 272 416zM272 320h-96C167.2 320 160 312.8 160 304C160 295.2 167.2 288 176 288h96C280.8 288 288 295.2 288 304C288 312.8 280.8 320 272 320zM432 416h-96c-8.836 0-16-7.164-16-16c0-8.838 7.164-16 16-16h96c8.836 0 16 7.162 16 16C448 408.8 440.8 416 432 416zM432 320h-96C327.2 320 320 312.8 320 304C320 295.2 327.2 288 336 288h96C440.8 288 448 295.2 448 304C448 312.8 440.8 320 432 320zM448 208C448 216.8 440.8 224 432 224h-256C167.2 224 160 216.8 160 208v-96C160 103.2 167.2 96 176 96h256C440.8 96 448 103.2 448 112V208z"></path></svg>
                            <span class="ml-3">Blog</span>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<?php wp_footer()?>
</body>
</html>