<?php $this->title = "Supprimer votre commentaire"; ?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3><?=htmlspecialchars($_GET['title'])?></h3>
    <p>Vos retour sur l'expérience</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">  
    <article>
        <aside>
            <h4 class="titleForm titleForum">
                <div>Réponse du <?=htmlspecialchars($comment['date_creation'])?></div>
            </h4>
            <div class="comments_content">
                <p class="util_info">
                    Par : <?=htmlspecialchars($comment['author'])?><br/>
                    Inscrit(e): <?=htmlspecialchars($comment['author_inscription'])?><br/>
                    Groupe : 
                        <?php 
                        if($comment['author_team'] == 2){
                    ?>
                    Utilisateur
                    <?php
                    }
                    ?>
                </p>
                <div class="forumCommentContent">
                   <p><?=nl2br(html_entity_decode($comment['content']))?></p>
                   <p class="deleteButton"><a href="index.php?controller=forum&amp;action=deleteComment&amp;title=<?=$_GET['title']?>&amp;topic_id=<?=$comment['topic_id']?>&amp;comment_id=<?=$comment['id']?>">Supprimer ce commentaire définitivement</a></p>
                </div>
            </div>
        </aside>
    </article>
</section>