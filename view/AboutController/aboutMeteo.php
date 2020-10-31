<?php $this->title = "Météo"; ?>
<?php $this->script ='  <script src="../public/js/weather/forecast.js"></script>
                        <script src="../public/js/weather/weather.js"></script>
                        <script src="../public/js/weather/map.js"></script>
                        <script src="../public/js/weather/mainWeather.js"></script>'; 
?>

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
        <aside id="weather">
            <div id="mapId"></div>
            <table class="weatherDetail">
                <tr id="arrayPrev"></tr>
            </table>
        </aside>
    </article>
</section>