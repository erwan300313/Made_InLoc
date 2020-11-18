class Contact{
    constructor(){ 
        this.firstName = document.getElementById('firstName');
        this.lastName = document.getElementById('lastName');
        this.mail = document.getElementById('mail');
        this.tel = document.getElementById('tel');
        this.content = document.getElementById('contact_content');
        this.inputEvent();
        this.blurEvent();
    };
    
    inputEvent(){
        this.mail.addEventListener("input", () =>{
            this.email = this.mail.value;
            this.mailVerif = document.getElementById('mailVerif');
            this.emailReg = new RegExp(/^([\w-\.]+)@((?:[\w]+\.)+)([a-zA-Z]{2,4})/i);
            this.valide = this.emailReg.test(this.email);
            if(!this.valide){
                this.mailVerif.textContent = 'Ex : test@madinloc.fr';
                
            }else{
                this.mailVerif.textContent = 'Adresse Email valide';
            }
        });

        this.tel.addEventListener("input", () =>{
            let phone = this.tel.value;
            let phoneVerif = document.getElementById('phoneVerif');
            let phoneReg = new RegExp(/^(01|02|03|04|05|06|08)[0-9]{8}/gi);
            let valide = phoneReg.test(phone);
            if(!valide){
                phoneVerif.textContent = 'Ex : 0102030405'
                
            }else{
                phoneVerif.textContent = 'Numéro de téléphone valide'
            }
        });

    }

    blurEvent(){ 
        this.firstName.addEventListener("blur", () =>{
            this.firstNameVal = this.firstName.value;
            this.fNameSpan = document.getElementById('fistNameSpan');
            if(this.firstNameVal === ""){
                this.firstName.style.border = '2px solid red';
                this.fNameSpan.textContent = "Vous devez renseigner votre Prénom";  
            }else{
                this.firstName.style.border = '2px solid rgb(118, 118, 118)';
                this.fNameSpan.textContent = "";
            }
        });

        this.lastName.addEventListener("blur", () =>{
            this.lastNameVal = this.lastName.value;
            this.lNameSpan = document.getElementById('lastNameSpan');
            if(this.lastNameVal === ""){
                this.lastName.style.border = '2px solid red';
                this.lNameSpan.textContent = "Vous devez renseigner votre Nom";  
            }else{
                this.lastName.style.border = '2px solid rgb(118, 118, 118)';
                this.lNameSpan.textContent = "";
            }
        });

        this.mail.addEventListener("blur", () =>{
            if(!this.valide){
                this.mail.style.border = '2px solid red'
            }else{
                this.mail.style.border = '2px solid rgb(118, 118, 118)'
            }
        });

        this.tel.addEventListener("blur", () =>{
            if(this.tel.value === ""){
                this.tel.style.border = '2px solid red'
            }else{
                this.tel.style.border = '2px solid rgb(118, 118, 118)'
            }
        });
    }
};

newContact = new Contact();