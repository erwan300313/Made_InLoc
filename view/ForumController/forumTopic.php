<?php $this->title = "Nos ballades"; ?>

<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3><?=$_GET['title']?></h3>
    <p>Vos retours d'expérience</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
            <?php
            if(isset($_SESSION['pseudo'])){
            ?>
                <p><a href="" id="newTopic">Ajouter un nouveau post</a></p>
                <form method="POST" action="index.php?controller=forum&amp;action=addTopic&amp;author=<?=$_SESSION['pseudo']?>&amp;date_inscription=<?=$_SESSION['date_inscription']?>&amp;author_team=<?=$_SESSION['team']?>&amp;category_id=<?=$_GET['category_id']?>" enctype="multipart/form-data" id="formTopic">
                    <label for="title">Titre</label>
                    <input type="text" id="title" name="title" class="titleNewPost"/><br />
                    <textarea id="content" name="content"rows="5" cols="33" placeholder="Rédiger votre nouveau post ici"></textarea><br />
                    <input type= "submit" name="chargement" value="Envoyer le post">
                </form>
            <?php
            }
            ?>
            <aside>
                <h4 class="titleForm titleForum"><?=$_GET['title']?></h4>
                <ul class="balade forum">
                <?php
                while ($data = $topics->fetch()){
                ?>
                    <li>
                        <p class="titleSection"><a href="index.php?controller=forum&amp;action=forumComment&amp;topic_id=<?=$data['id']?>"><i class="fas fa-chevron-circle-right"></i><?=$data['title']?></a></p>
                        <p class="dateCreation">Posté le <?=$data['date_creation']?> par <?=$data['author']?></p>  
                    </li>
                <?php 
                }
                ?>
            </aside>
    </article>
</section>