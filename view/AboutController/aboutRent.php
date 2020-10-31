<?php $this->title = "Location"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Location</h3>
    <p>A la journée ou à la semaine, c'est vous qui décidez.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">
    <article id="rent">
        <h2>Choisissez la location faite pour vous</h2>
        <p> Notre parc de moto se compose de Kawasaki Z900, de Suzuki 750 GSR et de Ducati 900 monsters .<br />
            Toutes nos locations sont accompagnées d'une assurance tous risques obligatoire et non négociable.<br />
            Les prix affichés ci-dessous sont TTC et concerne tout notre par de moto.
        </p>
        <aside id="smallSize">
            <h3>Catégorie 125cc</h3>
            <div class="midSize">
            <?php
            while ($data = $get125Price->fetch()){
                ?>
                <ul>
                    <li><?=htmlspecialchars($data['duration'])?></li> 
                    <li><?=htmlspecialchars($data['price'])?>€ </li>
                    <li><?=htmlspecialchars($data['km_included'])?> Km inclus</li>
                    <li><?=htmlspecialchars($data['extra_day'])?> € / Jour sup</li>
                    <li><?=htmlspecialchars($data['caution'])?> € de caution</li>
                    <li><p><a href="">Reserver</a></p</li>
                </ul>
                <?php 
            }
            ?>
            </div>
        </aside>
        <aside id="midSize">
            <h3>Catégorie 800cc</h3>
            <div class="midSize">
            <?php
            while ($data = $get800Price->fetch()){
                ?>
                <ul>
                    <li><?=htmlspecialchars($data['duration'])?></li> 
                    <li><?=htmlspecialchars($data['price'])?>€ </li>
                    <li><?=htmlspecialchars($data['km_included'])?> Km inclus</li>
                    <li><?=htmlspecialchars($data['extra_day'])?> € / Jour sup</li>
                    <li><?=htmlspecialchars($data['caution'])?> € de caution</li>
                    <li><p><a href="">Reserver</a></p></li>
                </ul>
                <?php 
            }
            ?>
            </div>
        </aside>
    </article>
</section>
