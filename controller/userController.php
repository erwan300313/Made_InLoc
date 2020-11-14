<?php
require_once('controller/controller.php');

Class UserController extends Controller{

    private $aboutManager;

    public function __construct(){
        $this->userManager = new UserManager();
        $this->forumManager = new ForumManager();
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function userRegistration(){
        $this->genererVue(array()); 
    }

    public function userLogin(){
        $this->genererVue(array()); 
    }

    function addUser(){
        $userCheck = $this->userManager->userCheck($_POST['pseudo']);
        if($userCheck == false){
            if($_POST['mail'] == $_POST['mailCheck']){
                if($_POST['password'] == $_POST['passwordCheck']){
                    $pass_hache = password_hash($_POST['password'], PASSWORD_DEFAULT);
                    $this->userManager->addUser($_POST['firstName'], $_POST['lastName'], $_POST['pseudo'], $pass_hache, $_POST['mail'], $_POST['city'], $_POST['birthday'],$_GET['team']);
                    header('Location: index.php?controller=user&action=userCheck&pseudo=' . $_POST['pseudo'] . '&password=' . $_POST['password']);
                }else{
                    throw new Exception('Les saisies de vos adresses mot de pass sont différentes.');
                }
            }else{
                throw new Exception('Les saisies de vos adresses mail sont différentes.');
            }  
        }else{
            throw new Exception('Votre pseudo est déjà utilisé par un autre utilisateur, veuillez entrer un nouveau pseudo');
        }
    }

    public function userCheck(){
        if(isset($_GET['pseudo']) AND isset($_GET['password'])){
            $pseudo = $_GET['pseudo'];
            $password = $_GET['password'];
        }elseif(isset($_POST['pseudo']) AND isset($_POST['password'])){
            $pseudo = $_POST['pseudo'];
            $password = $_POST['password'];
        }else{
            throw new Exception('Il y as un probleme dans votre pseudo ou votre mot de passe.');
        }

        $user = $this->userManager->getUser($pseudo);
        $passWordVerify = password_verify($password, $user['password']);

        if($user == false){
            throw new Exception('Il y as un probleme dans votre pseudo.');
        }else{
            if($passWordVerify){
                $_SESSION['pseudo'] = $user['pseudo'];
                $_SESSION['team'] = $user['team'];
                $_SESSION['date_inscription'] = $user['date_inscription'];
                $_SESSION['id'] = $user['id'];
                header('Location: index.php?controller=user&action=userArea&category_id=' . $_GET['category_id']); 
            }else{
                throw new Exception('Il y as un probleme dans votre mot de pass.');
            }
        }
    }

    public function userArea(){
        $user = $this->userManager->getUser($_SESSION['pseudo']);
        $img = $this->forumManager->getImg($_SESSION['pseudo'], $_GET['category_id']);
        $this->genererVue(array('user' => $user, 'img' => $img));
    }

    public function addPicture(){
        if($_FILES['monfichier']['error'] == 0){
            ?> <pre><?php print_r($_POST) ?> </pre> <?php
            if($_FILES['monfichier']['size'] > 1500000){
                $error = "Votre fichier est trop lourd.";
            }
            $extension = strrchr($_FILES['monfichier']['name'],'.');
            if($extension != '.jpg'){
                $error = "Votre fichier n'est pas conforme.";
            }
            if(!isset($error)){
                move_uploaded_file($_FILES['monfichier']['tmp_name'], 'public/img/user_img/'.$_FILES['monfichier']['name']);
                echo "le fichier est chargé";
            }
        }else{
            throw new Exception('Il y un probleme avec l\'image que vous souahitez enregistrer.');
        }

        $this->forumManager->addimg($_SESSION['pseudo'], $_SESSION['date_inscription'], $_SESSION['team'], $_GET['category_id'], $_POST['title'], $_POST['content'], $_FILES['monfichier']['name']);
        header('Location: index.php?controller=user&action=userArea&category_id=' . $_GET['category_id']);
    }
    
    function logOut(){
        $_SESSION = array();
        session_destroy();
        header('Location: index.php');
    }
}