<?php
require_once('controller/controller.php');

Class IndexController extends Controller{

    private $postManager;
    private $variousManager;

    public function __construct(){
        /* $this->postManager = new PostManager();
        $this->variousManager = new VariousManager(); */
    }
   
    //Index data display
    public function index(){
        $this->genererVue(array()); 
    }
}