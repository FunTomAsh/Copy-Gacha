document.addEventListener("DOMContentLoaded", function () {

    const profilButton = document.getElementById("profile-button");
    const reviewButton = document.getElementById("review-button");
    const investmentButton = document.getElementById("invest-button");
    const profile = document.getElementById("profile");
    const review = document.getElementById("review");
    const investment = document.getElementById("investment-tips");

    const gear = document.getElementById("gear");
    const gearExpl = document.getElementById("gear_explanation");
    const arrowGear = document.getElementById("arrow-gear");
    const skill = document.getElementById("skill");
    const skillExpl = document.getElementById("skill_explanation");
    const arrowSkill = document.getElementById("arrow-skill");

    const rarityColors = {
        "SSR": "#d7bc57",
        "SR": "#c97ef5",
        "R": "#2ca7ff",
    };

    let isSkillOpened = false;
    let isGearOpened = false;

    gear.addEventListener("click", function () {
        if(!isGearOpened){
            gearExpl.classList.remove("hidden-sp");
            arrowGear.style.transform = "rotate(-0.5turn)";
            isGearOpened = true;
        }
        else{
            gearExpl.classList.add("hidden-sp");
            arrowGear.style.transform = "rotate(0turn)";
            isGearOpened = false;
        }
    });

    skill.addEventListener("click", function () {
        if(!isSkillOpened){
            skillExpl.classList.remove("hidden");
            arrowSkill.style.transform = "rotate(-0.5turn)";
            isSkillOpened = true;
        }
        else{
            skillExpl.classList.add("hidden");
            arrowSkill.style.transform = "rotate(0turn)";
            isSkillOpened = false;
        }
    });

    function changeActiveButton(activeButton, activeSection) {

        const rarity = activeButton.getAttribute("rarity");
        const borderColor = rarityColors[rarity] || "#d7bc57";

        [profilButton, reviewButton, investmentButton].forEach(button => {
            button.classList.remove("opacity-100");
            button.classList.add("opacity-70");
            button.style.borderColor = "#33343a";
            button.style.borderBottomColor = "#484950";
            button.style.backgroundColor = "#2c2d33";
        });

        [profile, review, investment].forEach(section => section.classList.add("hidden"));

        activeButton.classList.remove("opacity-70");
        activeButton.classList.add("opacity-100");
        activeButton.style.borderColor = "#484950";
        activeButton.style.borderBottomColor = borderColor;
        activeButton.style.backgroundColor = "#36373d";

        activeSection.classList.remove("hidden");
    }

    profilButton.addEventListener("click", () => changeActiveButton(profilButton, profile));
    reviewButton.addEventListener("click", () => changeActiveButton(reviewButton, review));
    investmentButton.addEventListener("click", () => changeActiveButton(investmentButton, investment));


    //skillz
    function SkillUpd(skillNum) {
        let level = 10;
        const maxLevel = 10;

        const plus = document.getElementById(`s${skillNum}-plus`);
        const minus = document.getElementById(`s${skillNum}-minus`);
        const levelDisplay = document.getElementById(`skill${skillNum}-level`);
        const descs = document.querySelectorAll(`.skill${skillNum}-desc`);

        function updateSkillDesc() {
            descs.forEach(desc => desc.style.display = 'none');
            const current1 = document.querySelector(`.skill${skillNum}-desc[data-level="${level}"]`);
            if (current1) current1.style.display = '';
            levelDisplay.textContent = level;

            if (level <= 1) {
                minus.classList.remove("opacity-60", "hover:opacity-90", "cursor-pointer");
                minus.classList.add("opacity-20");
            } else {
                minus.classList.add("opacity-60", "hover:opacity-90", "cursor-pointer");
                minus.classList.remove("opacity-20");
            }
        
            if (level >= maxLevel) {
                plus.classList.remove("opacity-60", "hover:opacity-90", "cursor-pointer");
                plus.classList.add("opacity-20");
            } else {
                plus.classList.add("opacity-60", "hover:opacity-90", "cursor-pointer");
                plus.classList.remove("opacity-20");
            }
        }

        updateSkillDesc();

        plus.addEventListener("click", () => {
            if (level < maxLevel) {
                level++;
                updateSkillDesc();
            }
        });

        minus.addEventListener("click", () => {
            if (level > 1) {
                level--;
                updateSkillDesc();
            }
        });
    }

    SkillUpd(1);
    SkillUpd(2);
    SkillUpd(3);

    const buttons = document.querySelectorAll('.popover-btn');

    function closeAllPopovers() {
        document.querySelectorAll('.popover-content').forEach(pop => (pop.style.opacity = 0, pop.classList.add('hidden')));
    }

    buttons.forEach(button => {
        button.addEventListener('click', (e) => {
            e.stopPropagation();
            const targetId = button.getAttribute('data-popover');
            const popover = document.getElementById(targetId);

            const isVisible = !popover.classList.contains('hidden');
            closeAllPopovers();

            if (!isVisible) {
                const rect = button.getBoundingClientRect();
                const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                const scrollLeft = window.pageXOffset || document.documentElement.scrollLeft;

                popover.style.top = `${0}px`;
                popover.style.left = `${rect.width}px`;

                popover.classList.remove('hidden');
                popover.style.opacity = 1;
            }
        });
    });

    document.addEventListener('click', () => {
        closeAllPopovers();
    });

});