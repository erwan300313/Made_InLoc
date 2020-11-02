<?php $this->title = "Connexion"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Connexion</h3>
    <p>Accedez à votre espace membre.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
        <p class="title_pres">Connexion à votre compte personnel</p>
        <form action="index.php?controller=user&amp;action=userArea" method="POST" class="registrationForm">
            <h4 class="titleForm"></h4>
            <ul>
                <li>
                    <label for="pseudo" class="labFormReg">Saisissez votre pseudo</label>
                    <input type="text" id="pseudo" name="pseudo"/>
                </li>
                <li>
                    <label for="password" class="labFormReg">Saisissez votre mot de passe</label>
                    <input type="password" id="password" name="password"/>
                </li>
            </ul>
            
            <input type="submit" value="Valider votre saisie" id=""/>            
        </form>
    </article>
</section>