<?php $this->title = "Nos ballades"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Nos ballades</h3>
    <p>Vos retour sur l'expérience</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
            <aside>
                <h4 class="titleForm titleForum">Retour sur nos ballades</h4>
                <ul class="balade forum">
                <?php
                while ($data = $topics->fetch()){
                ?>
                    <li>
                        <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><?=$data['title']?></p>
                        <p class="dateCreation">Posté le <?=$data['date_creation']?> par <?=$data['author']?></p>  
                    </li>
                <?php 
                }
                ?>
            </aside>
    </article>
</section>