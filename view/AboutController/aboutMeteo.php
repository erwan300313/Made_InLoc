<?php $this->title = "Météo"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Météo</h3>
    <p>Prévision en direct</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
        <p class="title_pres">Visualiser les prévision en direct sur la carte ci dessous<br /> Survoler une ville pour avoir le détail de la météo en direct. <br/>Cliquer une ville pour avoir les prévision à 8 jours.</p>
        <aside id="lesson">
        <div id="mapId"></div>
        <div id="weatherDetail"></div>
        <table >
            <tr id="arrayPrev"></tr>
        </table>
        </aside>
    </article>
</section>