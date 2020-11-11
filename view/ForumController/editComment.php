<?php $this->title = "Editer votre commentaire"; ?>


<img src="../../public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Nos ballades</h3>
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
                    <form method="POST" action="index.php?controller=forum&amp;action=updateComment&amp;comment_id=<?=$comment['id']?>&amp;topic_id=<?=$topic['id']?>" enctype="multipart/form-data" id="formTopic">
                        <textarea id="content" name="content"rows="5" cols="33"><?=$comment['content']?></textarea><br />
                        <input type= "submit" name="chargement" value="Envoyer le commentaire modifier">
                    </form>
                </div>
            </div>
        </aside>
    </article>
</section>