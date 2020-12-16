<?php $this->title = "Circuit"; ?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Circuit découverte</h3>
    <p>Découvrez la martinique grace à nos circuit.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <?php
        while ($data = $circuits->fetch()){
        ?>
            <article id="circuit">
                <div class="circuit">
                    <img src="public/img/circuit/<?=htmlspecialchars($data['map'])?>.png" alt="<?=htmlspecialchars($data['map'])?>">
                    <div class="detail_circuit">
                        <h3><?=$data['title']?></h3>
                        <p><?=$data['content']?></p>
                        <ul>
                            <li>Nombre de kilometre: <?=htmlspecialchars($data['distance'])?></li>
                            <li>Temps de parcour minimum: <?=htmlspecialchars($data['time'])?></li>
                            <li>Cout de la balade: <?=htmlspecialchars($data['price'])?> *</li>
                        </ul>
                    </div>
                </div>
            <p>Point de vue de cette balade</p>
            <p><img class="viewPoint" src="public/img/viewpoint/<?=htmlspecialchars($data['picture1'])?>.jpg" alt="<?=htmlspecialchars($data['picture1'])?>"></p>
            <p><img class="viewPoint" src="public/img/viewpoint/<?=htmlspecialchars($data['picture2'])?>.jpg" alt="<?=htmlspecialchars($data['picture2'])?>"></p>
            <p><img class="viewPoint" src="public/img/viewpoint/<?=htmlspecialchars($data['picture3'])?>.jpg" alt="<?=htmlspecialchars($data['picture3'])?>"></p>
            </article>
        <?php 
        }
        ?>
</section>