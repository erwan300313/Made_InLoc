<?php $this->title = "Essai"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Technique</h3>
    <p>Découvrez tous nos modèles en détail.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
    <p class="title_pres">Vous souhaitez louer un de nos modèles mais vous hésiter ?<br /> Retrouver ci-dessous toutes les caractéristiques complète par modèle. <br/>Cliquer sur le bouton en savoir plus pour louer un de nos bolides ou pour plus d'informations.</p>
    <?php
        while ($data = $motos->fetch()){
        ?>
            <aside id="moto">
                <div class="moto">
                    <div class="detail_moto">
                        <h3><?=htmlspecialchars($data['builder'])?> <?=htmlspecialchars($data['model'])?> <?=htmlspecialchars($data['vintage'])?> :</h3>
                        <h4>Caractériqtique moteur:</h4>
                        <p><?=nl2br(html_entity_decode($data['engine_detail']))?></p>
                        <h4>Caractéristique Chassis:</h4>
                        <p><?=nl2br(html_entity_decode($data['fram_detail']))?></p>
                        <a href="">Nous contacter</a>
                    </div>
                    <div class="picture_moto">
                        <img src="../../public/img/moto/<?=htmlspecialchars($data['picture1'])?>" alt="<?=htmlspecialchars($data['picture1'])?>">
                        <img src="../../public/img/moto/<?=htmlspecialchars($data['picture2'])?>" alt="<?=htmlspecialchars($data['picture2'])?>">
                    </div>
                    </div>
                    
            </aside>
        <?php 
        }
        ?>
    </article>
</section>