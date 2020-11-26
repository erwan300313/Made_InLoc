<?php $this->title = $topic['title']; ?>
<?php $this->script ='<script src="public/js/forum/forum.js"></script>';?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3><?=htmlspecialchars($_GET['title'])?></h3>
    <p>Vos retour d'expérience</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
        <?php
        if(isset($_SESSION['pseudo'])){
        ?>
            <p id="newTopic"><a href="">Ajouter un nouveau commentaire</a></p>
            <form method="POST" action="index.php?controller=forum&amp;action=addComment&amp;catTopic=<?=$topic['id']?>&amp;author=<?=$_SESSION['pseudo']?>&amp;author_team=<?=$_SESSION['team']?>&amp;author_inscription=<?=$_SESSION['date_inscription']?>&amp;title=<?=$_GET['title']?>" enctype="multipart/form-data" id="formTopic">
                <textarea id="content" name="content"rows="5" cols="33" placeholder="Rédiger votre commentaire ici"></textarea><br />
                <input type= "submit" name="chargement" value="Envoyer le commentaire">
            </form>
        <?php
        }
        ?>
        <aside>
            <h4 class="titleForm titleForum"><?=htmlspecialchars($topic['title'])?> le <?=htmlspecialchars($topic['date_creation'])?></h4>
            <div class="comments_content">
                <p class="util_info">
                    Par : <?=htmlspecialchars($topic['author'])?><br/>
                    Inscrit(e): <?=htmlspecialchars($topic['author_inscription'])?><br/>
                    Groupe : 
                        <?php 
                        if($topic['author_team'] == 2){
                    ?>
                    Utilisateur
                    <?php
                    }
                    ?>
                </p>
                <div class="forumCommentContent">
                    <?=nl2br(html_entity_decode($topic['content']))?>
                    <?php
                    if(isset($topic['img'])){
                    ?>
                        <p><img src="public/img/user_img/<?=$topic['img']?>" alt="<?=$topic['img']?>"></p>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </aside>
            <?php
            while ($data = $comments->fetch()){
                ?>
                    <aside>
                        <h4 class="titleForm titleForum">
                            <div>Réponse du <?=htmlspecialchars($data['date_creation'])?></div>
                             <div class="titleButton">
                                <?php
                                if(isset($_SESSION['pseudo']) AND $_SESSION['pseudo'] == $data['author']){
                                    /* Nothing */        
                                }else{
                                ?>
                                <a href="index.php?controller=forum&amp;action=reportComment&amp;comment_id=<?=$data['id']?>&amp;catTopic=<?=$topic['id']?>&amp;title=<?=$_GET['title']?>">Signaler</a>
                                <?php
                                }
                                if(isset($_SESSION['pseudo']) AND $_SESSION['pseudo'] == $data['author']){
                                ?>
                                <a href="forum/editComment/<?=$_GET['title']?>/<?=$data['id']?>/<?=$topic['id']?>">Modifier</a>
                                <a href="forum/viewDeleteComment/<?=$_GET['title']?>/<?=$data['id']?>/<?=$topic['id']?>">Supprimer</a>
                                <?php
                                }
                                ?>
                            </div>   
                        </h4>
                        <div class="comments_content">
                            <p class="util_info">
                                Par : <?=htmlspecialchars($data['author'])?><br/>
                                Inscrit(e): <?=htmlspecialchars($data['author_inscription'])?><br/>
                                Groupe : 
                                 <?php 
                                 if($data['author_team'] == 2){
                                ?>
                                Utilisateur
                                <?php
                                }
                                ?>
                            </p>
                            <div class="forumCommentContent">
                                <?=nl2br(html_entity_decode($data['content']))?>
                            </div>
                        </div>
                    </aside>
                <?php 
                }
                ?>
    </article>
</section>