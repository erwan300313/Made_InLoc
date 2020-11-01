<?php
require_once('controller/controller.php');

Class ForumController extends Controller{

    private $forumManager;

    public function __construct(){
        $this->forumManager = new ForumManager();
       
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    
}