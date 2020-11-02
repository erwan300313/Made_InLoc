<?php $this->title = "Espace membre"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Espace membre</h3>
    <p>Bienvenue sur votre espace personnelle.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
            <aside>
                <h4 class="titleForm">Information du compte</h4>
                <ul>
                    <li>Nom : <?=$user['last_name']?></li>
                    <li>Prénom : <?=$user['first_name']?></li>
                    <li>Pseudo : <?=$user['pseudo']?></li>
                    <li>Mail : <?=$user['mail']?></li>
                    <li>Type de membre : <?=$user['team']?></li>
                </ul>
            </aside>
            <aside>
                <h4 class="titleForm">Information additionnelles</h4>
                <ul>
                    <li>Votre ville : <?=$user['city']?></li>
                    <li>Date de naissance : <?=$user['birthday']?></li>
                </ul>
            </aside>
            
            
            
    </article>
</section>