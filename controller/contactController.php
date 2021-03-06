<?php
require_once('controller/controller.php');

use PHPMailer\PHPMailer\PHPMailer;

Class ContactController extends Controller{

    private $aboutManager;

    public function __construct(){
        $this->aboutManager = new AboutManager();
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function contactIndex(){
        $this->genererVue(array()); 
    }

    public function mail(){
        if(empty($_POST['subject']) OR empty($_POST['lastName']) OR empty($_POST['firstName']) OR empty($_POST['mail']) OR empty($_POST['tel']) OR empty($_POST['content'])){
            throw new Exception("Une erreur s'est produite lors de la transmission de votre formulaire.");
        }else{
            require 'vendor/autoload.php';
            $mail = new PHPMailer;
            $mail->isSMTP();
            /* $mail->SMTPDebug = 2; */  /* Enable verbose debug output */
            $mail->Host = 'smtp.live.com';
            $mail->Port = 587;
            $mail->CharSet = "UTF-8";
            $mail->SMTPAuth = true;
            $mail->Username = 'e.bridier@hotmail.com';
            $mail->Password = 'Toni300313';
            $mail->setFrom('e.bridier@hotmail.com', 'MadInLoc');
            $mail->addAddress('e.bridier@hotmail.com', 'Erwan');
            $mail->isHTML(true);                               
            $mail->Subject = 'Sujet du mail : ' . $_POST['subject'];
            $mail->Body    = 'Nom : ' . $_POST['lastName'] . '<br>Prénom : ' . $_POST['firstName'] . '<br>Mail : ' . $_POST['mail'] . '<br>Téléphone : ' . $_POST['tel'] . '<br>Contenue du message : ' . $_POST['content'];
            $mail->send();
            if(!$mail){
                throw new Exception("Une erreure c'est produite pendant l'envoi de votre message.");
            }else{
                $this->genererVue(array()); 
            }
        }   
    }  
}