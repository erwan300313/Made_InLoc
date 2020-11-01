<?php
require_once('controller/controller.php');

Class UserController extends Controller{

    private $aboutManager;

    public function __construct(){
        $this->userManager = new UserManager();
       
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function viewUserRegistration(){
        $this->genererVue(array()); 
    }

    function addUser(){
        $userCheck = $this->userManager->userCheck($_POST['pseudo']);
        if($userCheck == false){
            if($_POST['mail'] == $_POST['mailCheck']){
                if($_POST['password'] == $_POST['passwordCheck']){
                    $pass_hache = password_hash($_POST['password'], PASSWORD_DEFAULT);
                    $this->userManager->addUser($_POST['firstName'], $_POST['lastName'], $_POST['pseudo'], $pass_hache, $_POST['mail'], $_POST['city'], $_POST['birthday'],$_GET['team']);
                    header('Location: index.php?controller=user&action=userArea&pseudo=' . $_POST['pseudo'] . '&password=' . $_POST['password']);
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

    public function userArea(){
        $user = $this->userManager->getUser($_GET['pseudo']);
        $passWordVerify = password_verify($_GET['password'], $user['password']);
        if($user == false){
            throw new Exception('Il y as un probleme dans votre pseudo.');
        }else{
            if($passWordVerify){
                $_SESSION['pseudo'] = $user['pseudo'];
                $_SESSION['team'] = $user['team'];
                $this->genererVue(array('user' => $user)); 
            }else{
                throw new Exception('Il y as un probleme dans votre mot de pass.');
            }
        }
    }

}