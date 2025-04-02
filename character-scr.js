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

    profilButton.addEventListener("click", function () {

        reviewButton.classList.remove("opacity-100");
        reviewButton.classList.remove("border-b-[#d7bc57]");
        reviewButton.classList.remove("bg-[#36373d]");
        reviewButton.classList.remove("border-[#484950]");
        reviewButton.classList.add("opacity-70");
        reviewButton.classList.add("border-b-[#484950]");
        reviewButton.classList.add("border-[#33343a]");
        reviewButton.classList.add("bg-[#2c2d33]");
        review.classList.add("hidden");

        investmentButton.classList.remove("opacity-100");
        investmentButton.classList.remove("border-b-[#d7bc57]");
        investmentButton.classList.remove("border-[#484950]");
        investmentButton.classList.remove("bg-[#36373d]");
        investmentButton.classList.add("opacity-70");
        investmentButton.classList.add("border-b-[#484950]");
        investmentButton.classList.add("border-[#33343a]");
        investmentButton.classList.add("bg-[#2c2d33]");
        investment.classList.add("hidden");

        profilButton.classList.remove("opacity-70");
        profilButton.classList.remove("border-b-[#484950]");
        profilButton.classList.remove("bg-[#2c2d33]");
        profilButton.classList.remove("border-[#33343a]");
        profilButton.classList.add("border-b-[#d7bc57]");
        profilButton.classList.add("bg-[#36373d]");
        profilButton.classList.add("opacity-100");
        profilButton.classList.add("border-[#484950]");        
        profile.classList.remove("hidden");
    });

    investmentButton.addEventListener("click", function () {

        reviewButton.classList.remove("opacity-100");
        reviewButton.classList.remove("border-b-[#d7bc57]");
        reviewButton.classList.remove("bg-[#36373d]");
        reviewButton.classList.remove("border-[#484950]");
        reviewButton.classList.add("opacity-70");
        reviewButton.classList.add("border-b-[#484950]");
        reviewButton.classList.add("border-[#33343a]");
        reviewButton.classList.add("bg-[#2c2d33]");
        review.classList.add("hidden");

        profilButton.classList.remove("opacity-100");
        profilButton.classList.remove("border-b-[#d7bc57]");
        profilButton.classList.remove("bg-[#36373d]");
        profilButton.classList.remove("border-[#484950]");
        profilButton.classList.add("opacity-70");
        profilButton.classList.add("border-b-[#484950]");
        profilButton.classList.add("border-[#33343a]");
        profilButton.classList.add("bg-[#2c2d33]");
        profile.classList.add("hidden");

        investmentButton.classList.remove("opacity-70");
        investmentButton.classList.remove("bg-[#2c2d33]");
        investmentButton.classList.remove("border-b-[#484950]");
        investmentButton.classList.remove("border-[#33343a]");
        investmentButton.classList.add("border-b-[#d7bc57]");
        investmentButton.classList.add("bg-[#36373d]");
        investmentButton.classList.add("border-[#484950]");  
        investmentButton.classList.add("opacity-100");        
        investment.classList.remove("hidden");
    });

    reviewButton.addEventListener("click", function () {

        investmentButton.classList.remove("opacity-100");
        investmentButton.classList.remove("border-b-[#d7bc57]");
        investmentButton.classList.remove("bg-[#36373d]");
        investmentButton.classList.remove("border-[#484950]"); 
        investmentButton.classList.add("opacity-70");
        investmentButton.classList.add("border-b-[#484950]");
        investmentButton.classList.add("bg-[#2c2d33]");
        investmentButton.classList.add("border-[#33343a]");
        investment.classList.add("hidden");

        profilButton.classList.remove("opacity-100");
        profilButton.classList.remove("border-b-[#d7bc57]");
        profilButton.classList.remove("bg-[#36373d]");
        profilButton.classList.remove("border-[#484950]"); 
        profilButton.classList.add("opacity-70");
        profilButton.classList.add("border-b-[#484950]");
        profilButton.classList.add("bg-[#2c2d33]");
        profilButton.classList.add("border-[#33343a]");
        profile.classList.add("hidden");

        reviewButton.classList.remove("bg-[#2c2d33]");
        reviewButton.classList.remove("opacity-70");
        reviewButton.classList.remove("border-b-[#484950]");
        reviewButton.classList.remove("border-[#33343a]");
        reviewButton.classList.add("bg-[#36373d]");
        reviewButton.classList.add("border-[#484950]"); 
        reviewButton.classList.add("border-b-[#d7bc57]");
        reviewButton.classList.add("opacity-100");        
        review.classList.remove("hidden");
    });


});