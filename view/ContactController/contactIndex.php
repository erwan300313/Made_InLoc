<?php $this->title = "Page de contact"; ?>
<?php $this->script ='<script src="public/js/contact/contact.js"></script>';?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Page de contact</h3>
    <p>La meilleure façon de nous contacter.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">
    <article class="contact">  
        <aside class="blockContactForm">
            <form action="index.php?controller=contact&amp;action=mail" method="post" class="contactForm">
                <h4 class="titleForm">Formulaire de contact</h4>
                <ul>
                    <li>
                        <label for="firtsName" class="labFormReg"></label>
                        <input type="text" id="firstName" name="firstName" placeholder="Votre Prénom" required/>
                        <span id="fistNameSpan"></span>
                    </li>
                    <li>
                        <label for="lastName" class="labFormReg"></label>
                        <input type="text" id="lastName" name="lastName" placeholder="Votre Nom" required/>
                        <span id="lastNameSpan"></span>
                    </li>
                    <li>
                        <label for="mail" class="labFormReg"></label>
                        <input type="email" id="mail" name="mail" placeholder="Mail"/>
                        <span id="mailVerif">Ex : test@madinloc.fr</span>
                    </li>
                    <li>
                        <label for="tel" class="labFormReg"></label>
                        <input type="tel" id="tel" name="tel" placeholder="Telephone"/>
                        <span id="phoneVerif">Ex : 0102030405</span>
                    </li>
                    <li>
                        <label for="subject"></label>
                        <select name="subject" id="subject">
                            <option value="">Objet du contact</option>
                            <option value="Location">Location</option>
                            <option value="Circuit découverte">Circuit découverte</option>
                            <option value="Question technique">Question technique</option>
                            <option value="Initiation">Initiation</option>
                            <option value="Entretien">Entretien</option>
                            <option value="Préparation">Préparation</option>
                        </select>
                    </li>
                    <textarea id="contact_content" name="content"rows="5" cols="33" placeholder="Votre message..."></textarea>
                    <span id="contentSpan"></span>
                    <br />
                </ul>
                <input type="submit" value="Valider votre message" class="choiseButton"/>            
            </form>
        </aside>  
        
        <aside class="blockContact">
            <ul>
                <h4 class="titleForm">Information de contact</h4>
                <li>Nous sommes ouvert de 8h à 20h du lundi au samedi.</li>
                <li>Notre équippe technique est disponible 7j/7 de 8h à 22h.</li>
                <h4 class="titleForm">Adresse</h4>
                <li>8 rue Caritan 97227 Saint Anne</li>
                <h4 class="titleForm">Téléphone</h4>
                <li>0696 12 34 56</li>
                <h4 class="titleForm">E-mail</h4>
                <li>contact@madeinloc.fr</li>
            </ul>    
        </aside>
    </article>
</section>