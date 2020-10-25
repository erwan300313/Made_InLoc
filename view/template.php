<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title><?= $title ?></title>
        <link href="../public/style/style.css" rel="stylesheet" /> 
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/fc001796a0.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width" />
    </head>
        
    <body>
        <div class="userModul"></div>
        <header>
            <div class="logo">
                <h1>Made <strong>InLoc</strong></h1>
            </div>
            <nav>
                <ul class="menu">
                    <li class="buttonMenu home"><a href="index.php">Accueil</a></li>
                    <li class="buttonMenu about"><a href="index.php?controller=about&amp;action=aboutIndex&amp;test=bonjour">A propos</a></li>
                    <li class="buttonMenu gallery"><a href="index.php?action=blog#ancre">Gallery</a></li>
                    <li class="buttonMenu team"><a href="index.php?action=contact#ancre">Notre Equipe</a></li>
                    <li class="buttonMenu forum"><a href="index.php?action=contact#ancre">Forum</a></li>
                    <li class="buttonMenu contact"><a href="index.php?action=contact#ancre">Contact</a></li>
                </ul>
            </nav>
            <div><i class="fas fa-phone-square-alt fa-2x"></i><p class="phoneNum">01-02-03-04-05</p></div>
            
        </header>  

        <section class="contentSection"> 
            <?= $content ?>
        </section>
             
        <footer>
            <div class="footer_block">
                <div class="logo">
                    <h1>Made <strong>InLoc</strong></h1>
                </div>
                <ul class="footer_social_network">
                    <li><a href=""><i class="fab fa-twitter"></i></a></li>
                    <li><a href=""><i class="fab fa-google-plus-square"></i></a></li>
                    <li><a href=""><i class="fab fa-facebook-square"></i></a></li>
                    <li><a href=""><i class="fas fa-share-alt-square"></i></a></li>
                </ul>
                <p class='copyright'>Copyright © 2020 | Bridier Corporation | Made InLoc - Location de moto en martinique </p>
            </div>
        </footer>
        <script src="../public/js/header/headerAnim.js"></script>
        <script src="../public/js/slider/slider.js"></script>
        <script src="../public/js/main.js"></script>
    </body>
</html>