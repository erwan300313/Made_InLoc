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
        <?php $datas = $titles->fetchAll();?>
        <aside>
            <h4 class="titleForm titleForum">Forum Balade</h4>
            <ul class="balade forum">
                <?php
                $category_id = 0;
                foreach ($datas as $keys => $data){
                    if($data['category_id'] == 1){
                        $category_id = $category_id +1; 
                        ?>
                        <li>
                            <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="index.php?controller=forum&amp;action=forumTopic&amp;category_id=<?=$category_id?>&amp;title=<?=$data['title']?>"><?=$data['title']?></a></p>
                            <div class="lastTopic">
                                <p><u>Dernier message :</u> <?=$data['lastTopic']?></p>
                            </div>
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
                    $category_id = 3;
                    foreach ($datas as $keys => $data){
                        if($data['category_id'] == 2){
                            $category_id = $category_id +1; 
                            ?>
                            <li>
                                <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="index.php?controller=forum&amp;action=forumTopic&amp;category_id=<?=$category_id?>&amp;title=<?=$data['title']?>"><?=$data['title']?></a></p>
                                <div class="lastTopic">
                                    <p><u>Dernier message :</u> <?=$data['lastTopic']?></p>
                                </div>
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
                    $category_id = 6;
                    foreach ($datas as $keys => $data){
                        if($data['category_id'] == 3){
                            $category_id = $category_id +1; 
                            ?>
                            <li>
                                <p class="titleSection"><i class="fas fa-chevron-circle-right"></i><a href="index.php?controller=forum&amp;action=forumTopic&amp;category_id=<?=$category_id?>&amp;title=<?=$data['title']?>"><?=$data['title']?></a></p>
                                <div class="lastTopic">
                                    <p><u>Dernier message :</u> <?=$data['lastTopic']?></p>
                                </div>
                            </li>
                            <?php
                        }
                    }
                    ?>
                </ul>
            </aside>
    </article>
</section>