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
                        <h4 class="titleForm titleForum">Le <?=htmlspecialchars($data['date_creation'])?> </h4>
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
                            <p class="forumCommentContent">
                                Réponse :<br/><br/>
                                <?=nl2br(html_entity_decode($data['content']))?>
                            </p>
                        </div>
                    </aside>
                <?php 
                }
                ?>
    </article>
</section>