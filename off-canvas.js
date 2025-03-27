document.addEventListener("DOMContentLoaded", function () {
    const offcanvas = document.getElementById("offcanvas-game-switcher");
    const offCanvasContent = document.getElementById("offcanvas-content");
    const bgShadow = document.getElementById("bg-shadow");
    const openSwitchMenuBtn = document.getElementById("game-switcher");
    const openSwitchMenuBtnMobile = document.getElementById("game-switcher-mobile");
    const closeSwitchMenuBtn = document.getElementById("close-offcanvas");
    const gameBoxContainer = document.getElementById("game-box-container");
    const gameBoxes = document.querySelectorAll(".game-box");
    const offCanvasMenu = document.getElementById("offcanvas-menu");
    const menuMobileBtn = document.getElementById("menu-mobile");
    const menuMobileBtnClose = document.getElementById("close-offcanvas-menu");

    const rightMain = document.getElementById("right-main");
    const topNav = document.getElementById("top-nav");
    const leftMenuTexts =  document.querySelectorAll(".left-menu-text");
    const collapseButton = document.getElementById("btn-collapse");
    const leftMenu = document.getElementById("left-menu");
    const leftMenuIcon = document.querySelectorAll(".left-menu-icon");
    const logo = document.getElementById("logo");

    let isSwitcherOpened = false;
    let isMenuOpened = false;

    // Collapse left menu
    collapseButton.addEventListener("click", function () {
        if (leftMenu.classList.contains("w-[260px]")) {
        // Collapse menu
        leftMenu.classList.remove("w-[260px]");
        leftMenu.classList.add("w-[70px]");
        rightMain.classList.remove("lg:ml-[260px]");
        rightMain.classList.add("lg:ml-[70px]");
        topNav.classList.remove("lg:left-[260px]");
        topNav.classList.add("lg:left-[70px]");

        leftMenuTexts.forEach(text => {
            text.classList.add("hidden");            
        });
        leftMenuIcon.forEach(icon => {
            icon.classList.remove("px-[30px]");
            icon.classList.add("px-[10px]");
            icon.classList.remove("justify-start");
            icon.classList.add("justify-center");            
        })
        collapseButton.style.transform = "scaleX(1)";

        const tempSrc = logo.src;
        logo.src = logo.alt;
        logo.alt = tempSrc;
            
        } else {
            // Expand menu
            leftMenu.classList.remove("w-[70px]");
            leftMenu.classList.add("w-[260px]");            
            rightMain.classList.remove("lg:ml-[70px]");
            rightMain.classList.add("lg:ml-[260px]");            
            topNav.classList.remove("lg:left-[70px]");
            topNav.classList.add("lg:left-[260px]");

            leftMenuTexts.forEach(text => {
                text.classList.remove("hidden");
                              
            });
            leftMenuIcon.forEach(icon => {
                icon.classList.remove("px-[10px]");
                icon.classList.add("px-[30px]");
                icon.classList.remove("justify-center");
                icon.classList.add("justify-start");  
            })
            collapseButton.style.transform = "scaleX(-1)";
            const tempSrc = logo.src;
            logo.src = logo.alt;
            logo.alt = tempSrc;
        }
    });


    menuMobileBtn.addEventListener("click", function () {
        offCanvasMenu.style.left = "0";
        bgShadow.classList.remove("hidden");
        isMenuOpened = true;
    });

    menuMobileBtnClose.addEventListener("click", function () {
        offCanvasMenu.style.left = "-400px";
        bgShadow.classList.add("hidden");
        isMenuOpened = false;
    });

    openSwitchMenuBtn.addEventListener("click", function () {
        offcanvas.style.left = "0";
        bgShadow.classList.remove("hidden");
        isSwitcherOpened = true;
    });

    openSwitchMenuBtnMobile.addEventListener("click", function () {
        offcanvas.style.left = "0";
        bgShadow.classList.remove("hidden");
        isSwitcherOpened = true;
    });

    closeSwitchMenuBtn.addEventListener("click", function () {
        offcanvas.style.left = "-400px";
        bgShadow.classList.add("hidden");
        offCanvasContent.style.backgroundImage = "";
        isSwitcherOpened = false;
    });

   /*
    document.addEventListener("click", function (event) {
        if (!offcanvas.contains(event.target) && !openSwitchMenuBtn.contains(event.target) && !openSwitchMenuBtnMobile.contains(event.target) && isSwitcherOpened) {
            offcanvas.style.left = "-400px";
            bgShadow.classList.add("hidden");
            offCanvasContent.style.backgroundImage = "";
            isSwitcherOpened = false;
        }
        if (!offCanvasMenu.contains(event.target) && !menuMobileBtn.contains(event.target) && isMenuOpened) {
            offCanvasMenu.style.left = "-400px";
            bgShadow.classList.add("hidden");
            isMenuOpened = false;
        }
    });*/

    bgShadow.addEventListener("click", function () {
        bgShadow.classList.add("hidden");
        offCanvasMenu.style.left = "-400px";
        offcanvas.style.left = "-400px";
        offCanvasContent.style.backgroundImage = "";
        isSwitcherOpened = false;
        isMenuOpened = false;        
    });

    // background when hover
    gameBoxes.forEach(box => {
        box.addEventListener("mouseenter", function () {
            const bgImage = box.getAttribute("data-bg");
            //offCanvasContent.style.backgroundImage = `linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(${bgImage})`;
            if (bgImage) {
                offCanvasContent.style.backgroundImage = `
                linear-gradient(to bottom, rgba(0, 0, 0, 0) 40%, rgba(0, 0, 0, 1) 100%),
                    url(${bgImage})
                `;
                offCanvasContent.style.backgroundPosition = "-200px center"; // Move left
                offCanvasContent.style.backgroundSize = "cover";
            }
        });

        box.addEventListener("mouseleave", function () {
            //offCanvasContent.style.backgroundImage = "";
        });
    });
});