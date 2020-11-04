<?php
require_once('controller/controller.php');

Class ForumController extends Controller{

    private $forumManager;

    public function __construct(){
        $this->forumManager = new ForumManager();
        $this->userManager = new UserManager();
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function forumIndex(){
        $this->genererVue(array()); 
    }

    public function forumOurBallad(){
        $topics = $this->forumManager->getTopics($_GET['category_id']);
        $this->genererVue(array('topics' => $topics)); 
    }
}