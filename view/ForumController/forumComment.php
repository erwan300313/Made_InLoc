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
        <?php
        if(isset($_SESSION['pseudo'])){
        ?>
            <p><a href="" id="newTopic">Ajouter un nouveau commentaire</a></p>
            <form method="POST" action="index.php?controller=forum&amp;action=addComment&amp;topic_id=<?=$topic['id']?>&amp;author=<?=$_SESSION['pseudo']?>&amp;author_team=<?=$_SESSION['team']?>&amp;author_inscription=<?=$_SESSION['date_inscription']?>" enctype="multipart/form-data" id="formTopic">
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
                <div class="forumCommentContent"><?=nl2br(html_entity_decode($topic['content']))?></div>
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
                                <a href="index.php?controller=forum&amp;action=reportComment&amp;comment_id=<?=$data['id']?>&amp;topic_id=<?=$topic['id']?>">Signaler</a>
                                <?php
                                }
                                if($_SESSION['pseudo'] == $data['author']){
                                ?>
                                <a href="index.php?controller=forum&amp;action=editComment&amp;topic_id=<?=$topic['id']?>&amp;comment_id=<?=$data['id']?>">Modifier</a>
                                <a href="index.php?controller=forum&amp;action=viewDeleteComment&amp;topic_id=<?=$topic['id']?>&amp;comment_id=<?=$data['id']?>">Supprimer</a>
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