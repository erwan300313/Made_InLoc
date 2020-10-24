(function() { 
  // on cible l'objet nav
  let objNav = document.querySelector("header");

  let memoPositionNav = objNav.offsetTop;
  function sticky(){
    var posCurseur = this.pageYOffset;
   
    if(memoPositionNav-posCurseur<1){
        objNav.style.backgroundColor = "rgb(241, 199, 57)";
        objNav.style.transitionDuration = "1s";
    }
    if(memoPositionNav-posCurseur>1){
        objNav.style.backgroundColor = "rgb(240,145,0)";
        objNav.style.transitionDuration = "0.5s";  
    }
  }
  window.addEventListener("scroll", sticky);
})()