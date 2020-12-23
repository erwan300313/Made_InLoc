<?php $this->title = "Forum"; ?>


<img src="public/img/banner/index_banner.png" alt="banner_background" class="banner_img">

<section class="banner">
    <h3>Forum</h3>
    <p>Bienvenue sur votre espace d'échange.</p>
    <a href=""> En savoir plus ...</a>
</section>

<div class="block_invisible"></div>

<section class="content_body">

    <article>
    <article>  
        <aside>
            <h4 class="titleForm titleForum">Règles et présentation</h4>
            <ul class="balade forum">
                <?php
                foreach ($datas as $keys => $data){
                    if($data['category_id'] == 4){ 
                        ?>
                        <li>
                            <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="forum/forumTopic/<?=$data['title']?>/<?=$data['topic_category_id']?>"><?=$data['title']?></a></p>
                            <p class="lastTopic">
                                <u>Dernier message : </u><br /><?=htmlspecialchars($data['lastTopic'])?>
                            </p>
                        </li>
                        <?php
                    }elseif($data['category_id'] == 5){ /* Membre présentation */
                        ?>
                        <li>
                            <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="forum/forumTopic/<?=$data['title']?>/<?=$data['topic_category_id']?>"><?=$data['title']?></a></p>
                            <p class="lastTopic">
                                <u>Dernier message : </u><br /><?=htmlspecialchars($data['lastTopic'])?>
                            </p>
                        </li>
                        <?php
                    }
                }
                ?>
            </ul>
        </aside>  
        <aside>
            <h4 class="titleForm titleForum">Forum Balade</h4>
            <ul class="balade forum">
                <?php
                foreach ($datas as $keys => $data){
                    if($data['category_id'] == 1){
                        ?>
                        <li>
                            <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="forum/forumTopic/<?=$data['title']?>/<?=$data['topic_category_id']?>"><?=$data['title']?></a></p>
                            <p class="lastTopic">
                                <u>Dernier message : </u><br /><?=htmlspecialchars($data['lastTopic'])?>
                            </p>
                        </li>
                        <?php
                    }
                }
                ?>
            </ul>
        </aside>
            <aside>
                <h4 class="titleForm titleForum">Forum gros cubes</h4>
                    <ul class="forumGC forum">
                    <?php
                    foreach ($datas as $keys => $data){
                        if($data['category_id'] == 2){
                            ?>
                            <li>
                                <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="forum/forumTopic/<?=$data['title']?>/<?=$data['topic_category_id']?>"><?=$data['title']?></a></p>
                                <p class="lastTopic">
                                    <u>Dernier message : </u><br /><?=htmlspecialchars($data['lastTopic'])?>
                                </p>
                            </li>
                            <?php
                        }
                    }
                    ?>
                    </ul>
            </aside>

            <aside>
                <h4 class="titleForm titleForum">Forum tourisme en martinique</h4>
                <ul class="forumTour forum">
                <?php
                    foreach ($datas as $keys => $data){
                        if($data['category_id'] == 3){
                            ?>
                            <li>
                                <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="forum/forumTopic/<?=$data['title']?>/<?=$data['topic_category_id']?>"><?=$data['title']?></a></p>
                                <p class="lastTopic">
                                    <u>Dernier message : </u><br /><?=htmlspecialchars($data['lastTopic'])?>
                                </p>
                            </li>
                            <?php
                        }
                    }
                    ?>
                </ul>
            </aside>
    </article>
</section>