/**
 * header.jsp의 script
 */

const secondBanner = document.querySelector("#second-banner");
const slideMenu = document.querySelector(".slide-menu");


secondBanner.addEventListener("mouseover", function(){
    slideMenu.style.display="block";
});

secondBanner.addEventListener("mouseout", function(){
    slideMenu.style.display="none";
});
