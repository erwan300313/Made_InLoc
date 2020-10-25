<?php
require_once('controller/controller.php');

Class AboutController extends Controller{

    private $aboutManager;

    public function __construct(){
        $this->aboutManager = new AboutManager();
       
    }
   
    public function index(){
        $this->genererVue(array()); 
    }

    public function AboutIndex(){
        $this->genererVue(array()); 
    }

    public function AboutRent(){
        $get125Price = $this->aboutManager->getPrice(125);
        $get800Price = $this->aboutManager->getPrice(800);
        $this->genererVue(array('get125Price' => $get125Price, 'get800Price' => $get800Price)); 
    }

    public function AboutCircuit(){
        $circuits = $this->aboutManager->getCircuits();
        $this->genererVue(array('circuits' => $circuits)); 
    }
}