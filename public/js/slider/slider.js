class Slider{
    constructor(content, sliderBloc){ 
        this.content = content;
        this.sliderBloc = sliderBloc
        this.slides = null;
        this.currentSlide = 0;
        this.timer = null;
        this.rightArrow = null;
        this.leftArrow = null;
        this.playPauseButton = null;
        this.demarre = false;
        this.createSlider();
        this.interSlide();
        this.eventSlide();
    };
    
    //création slider
    createSlider(){
        this.content.forEach((source)=>{
            
            this.slideElt = document.createElement("div");
            this.slideElt.classList = "slide";
            this.sliderBloc.appendChild(this.slideElt);
            
            let slideTxt = document.createElement("p");
            slideTxt.textContent = source.txt;
            slideTxt.classList = "slideTxt";
            this.slideElt.appendChild(slideTxt);

            let slideImg = document.createElement("img");
            slideImg.src = source.img;
            slideImg.classList = "slideImg";
            this.slideElt.appendChild(slideImg);
        });
        
        this.rightArrow = document.createElement("i");
        this.rightArrow.classList = "fas fa-arrow-right fa-1x rightArrow";
        this.sliderBloc.appendChild(this.rightArrow);
        
        this.leftArrow = document.createElement("i");
        this.leftArrow.classList = "fas fa-arrow-left fa-1x leftArrow";
        this.sliderBloc.appendChild(this.leftArrow);
        
        this.playPauseButton = document.createElement("i");
        this.playPauseButton.id = "playPauseButton";
        this.playPauseButton.classList = "fas fa-pause fa-1x";
        this.sliderBloc.appendChild(this.playPauseButton);
        
        
        
        this.sliderBloc.querySelector(".slide").classList.add("visible");
        
        this.slides = this.sliderBloc.querySelectorAll(".slide");
    }
    
    //Gestion passage slide suivant  
    
    nextSlide(){
        this.slides[this.currentSlide].classList.remove("visible");
        this.currentSlide = (this.currentSlide + 1) % this.slides.length;
        this.slides[this.currentSlide].classList.add("visible"); 
    }
    
    //Gestion passage slide précedent
    prevSlide(){
        this.slides[this.currentSlide].classList.remove("visible");
        this.currentSlide = (this.currentSlide + (this.slides.length - 1)) % this.slides.length;
        this.slides[this.currentSlide].classList.add("visible");
    }
    
    //initialisation de la boucle slide
    interSlide(){
        this.timer = setInterval(() => {this.nextSlide(); }, 5000);
    }
    
    //initialisation des evenements
    eventSlide(){
        
        this.rightArrow.addEventListener("click", () =>{
            this.nextSlide();
        })
        
        this.leftArrow.addEventListener("click", () =>{
            this.prevSlide();
        })
        
        this.playPauseButton.addEventListener("click", () =>{
            if (!this.demarre) {
                clearInterval(this.timer);
                this.playPauseButton.classList = "fas fa-play fa-1x";
            } else {
                this.interSlide();
                this.playPauseButton.classList = "fas fa-pause fa-1x";
            }
            this.demarre = !this.demarre;
        })
        
        document.addEventListener("keydown", (e) =>{
            if(e.keyCode === 37){
                this.prevSlide();
            }
            else if(e.keyCode === 39){
                this.nextSlide();
            }
        }) 
    }
};