<?php
require_once('controller/controller.php');

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

    
}