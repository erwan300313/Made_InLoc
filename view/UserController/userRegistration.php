<?php $this->title = "Inscription"; ?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Inscription</h3>
    <p>Devenez membre de la communauté.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
        <p class="title_pres">Création de votre compte personnel</p>
        <form action="index.php?controller=user&amp;action=addUser&amp;team=2" method="post" class="registrationForm">
            <h4 class="titleForm">Information du compte</h4>
            <ul>
                <li>
                    <label for="firtsName" class="labFormReg">Saisissez votre prénom </label>
                    <input type="text" id="firstName" name="firstName"/>
                </li>
                <li>
                    <label for="lastName" class="labFormReg">Saisissez votre nom</label>
                    <input type="text" id="lastName" name="lastName"/>
                </li>
                <li>
                    <label for="pseudo" class="labFormReg">Choisissez votre pseudo </label>
                    <input type="text" id="pseudo" name="pseudo"/>
                </li>
                <li>
                    <label for="password" class="labFormReg">Choississez un mot de passe </label>
                    <input type="password" id="password" name="password"/>
                </li>
                <li>
                    <label for="passwordCheck" class="labFormReg">Confirmez votre mot de passe </label>
                    <input type="password" id="passwordCheck" name="passwordCheck"/>  
                </li>
                <li>
                    <label for="mail" class="labFormReg">Saisissez votre adresse mail </label>
                    <input type="text" id="mail" name="mail"/>
                </li>
                <li>
                    <label for="mailCheck" class="labFormReg">Confirmez vorte adresse mail </label>
                    <input type="text" id="mailCheck" name="mailCheck"/>
                </li>
            </ul>

            <h4 class="titleForm">Information additionnelles</h4>
            <ul>
                <li>
                    <label for="city" class="labFormReg">Ville </label>
                    <input type="text" id="city" name="city"/><br />
                </li>
                <li>
                    <label for="birthday" class="labFormReg">Date de naissance </label>
                    <input type="date" id="birthday" name="birthday"/><br />
                </li>
            </ul>
            
            <input type="submit" value="Valider votre saisie" class="choiseButton"/>            
        </form>
    </article>
</section>