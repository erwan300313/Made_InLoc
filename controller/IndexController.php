<?php
require_once('controller/controller.php');

Class IndexController extends Controller{

    //Index data display
    public function index(){
        $this->genererVue(array()); 
    }
}