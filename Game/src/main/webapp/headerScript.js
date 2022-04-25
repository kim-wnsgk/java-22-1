/**
 * header.jsp의 script
 */
function openNav() {
	    document.getElementById("mySidenav").style.width = "250px";
	}	
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}


const banner = document.querySelector("#banner");
const slideMenu = document.querySelector(".slide-menu");


banner.addEventListener("mouseover", function(){
    slideMenu.style.display="block";
});

banner.addEventListener("mouseout", function(){
    slideMenu.style.display="none";
});
