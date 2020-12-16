<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <base href="<?= $racineWeb ?>" >
        <title><?= $title ?></title>
        <link href="public/style/style.css" rel="stylesheet" /> 
        <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/fc001796a0.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css"
       integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
       crossorigin=""/>
       <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js"
       integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew=="
       crossorigin=""></script>
       <script src="https://cdn.tiny.cloud/1/qv7aonmkdnd5f4ghrx4sugtxakuuiam2zc5ho2e03n55ttk0/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
       <script>
            tinymce.init({
            selector: 'textarea',
            plugins: 'advlist autolink lists link image charmap print preview hr anchor pagebreak',
            toolbar_mode: 'floating',
            });
        </script>
        <meta name="viewport" content="width=device-width" />
    </head>
        
    <body>
        <div class="superiorBlock"></div>
        <header>
            <div class="rightBlock">
                <div class="logo">
                    <h1>Made <strong>InLoc</strong></h1>
                </div>
                <div class="userModul">
                    <?php
                    if(isset($_SESSION['pseudo'])){
                    ?>
                    <p>Bonjour <?=$_SESSION['pseudo']?></p>
                    <div class="membreButton">
                        <p><i class="fas fa-house-user"></i><a href="index.php?controller=user&amp;action=userArea&amp;category_id=11">Espace membre /</a></p>
                        <p><i class="fas fa-sign-out-alt"></i><a href="index.php?controller=user&amp;action=logOut">Déconnexion</a></p> 
                    </div>
                    <?php
                    }else{
                    ?>
                    <p><a href="user/userLogin"><i class="far fa-user"></i> Se connecter</a> / <a href="user/userRegistration"><i class="fas fa-sign-in-alt"></i> S'inscrire</a></p>
                    <?php
                    }
                    ?>
                </div>
            </div>
            <div class="leftBlock">
                <nav id="burgerMenu" role="navigation">
                        <div id="menuToggle">
                        <input type="checkbox" />
                        <span></span>
                        <span></span>
                        <span></span>
                        <ul id="menu">
                            <li class="buttonMenu"><a href="index.php">Accueil</a></li>
                            <li class="buttonMenu"><a href="about/aboutIndex">A propos</a></li>
                            <li class="buttonMenu"><a href="about/aboutMeteo">Météo</a></li>
                            <li class="buttonMenu"><a href="forum/forumIndex">Forum</a></li>
                            <li class="buttonMenu"><a href="contact/contactIndex">Contact</a></li>
                        </ul>
                    </div>
                </nav>
                <nav id="menuLarge">
                    <ul class="menu">
                        <li class="buttonMenu"><a href="index.php">Accueil</a></li>
                        <li class="buttonMenu"><a href="about/aboutIndex">A propos</a></li>
                        <li class="buttonMenu"><a href="about/aboutMeteo">Météo</a></li>
                        <li class="buttonMenu"><a href="forum/forumIndex">Forum</a></li>
                        <li class="buttonMenu"><a href="contact/contactIndex">Contact</a></li>
                    </ul>
                </nav>
                <div class="phoneContact"><i class="fas fa-phone-square-alt fa-2x"></i><p class="phoneNum">0696 12 34 56</p></div>
            </div>
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
        <?=$script?>
        <script src="public/js/header/headerAnim.js"></script>
    </body>
</html>