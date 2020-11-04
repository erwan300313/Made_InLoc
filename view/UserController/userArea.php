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
                    <li>Nom : <?=htmlspecialchars($user['last_name'])?></li>
                    <li>Prénom : <?=htmlspecialchars($user['first_name'])?></li>
                    <li>Pseudo : <?=htmlspecialchars($user['pseudo'])?></li>
                    <li>Mail : <?=htmlspecialchars($user['mail'])?></li>
                    <li>Type de membre : <?=$user['team']?></li>
                </ul>
            </aside>
            <aside>
                <h4 class="titleForm">Information additionnelles</h4>
                <ul>
                    <li>Votre ville : <?=htmlspecialchars($user['city'])?></li>
                    <li>Date de naissance : <?=htmlspecialchars($user['birthday'])?></li>
                </ul>
            </aside>
            <aside>
                <h4 class="titleForm">Présentation de tes engins?</h4>

                <form method="POST" action="index.php?controller=user&amp;action=addPicture" enctype="multipart/form-data" class="formPres">
                    <input type="file" name="monfichier" value="" class="choiseButton"><br />
                    <textarea id="content" name="content"rows="5" cols="33" placeholder="Décrivez votre bolide en détail ..."></textarea><br />
                    <input type= "submit" name="chargement" value="charger le fichier">
                </form>
            </aside>
            <aside>
            <h4 class="titleForm">Mes engins</h4>
            <?php
                while ($data = $user_img->fetch()){
            ?>
                <div class="userPres">
                    <p class="imgPres"><img src="../../public/img/user_img/<?=htmlspecialchars($data['img'])?>" alt="<?=htmlspecialchars($data['img'])?>"></p>
                    <p class="contentPres"><?=htmlspecialchars($data['content'])?></p>
                </div>
            <?php 
            }
            ?>
            </aside>  
    </article>
</section>