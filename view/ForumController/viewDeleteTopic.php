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

        <aside>
                <div class="forumCommentContent">
                   <p class="deleteButton"><a href="index.php?controller=forum&amp;action=deleteTopic&amp;topic_id=<?=$topic['id']?>&amp;catTopic=<?=$_GET['catTopic']?>&amp;title=<?=$_GET['title']?>">Supprimer ce Post définitivement</a></p>
                </div>
            </div>
        </aside>
    </article>
</section>