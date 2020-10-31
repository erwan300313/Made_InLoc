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

    public function AboutModel(){
        $motos = $this->aboutManager->getMotos();
        $this->genererVue(array('motos' => $motos)); 
    }

    public function AboutLesson(){
        $this->genererVue(); 
    }

    public function AboutRepair(){
        $this->genererVue(); 
    }

    public function AboutCustom(){
        throw new Exception("Le service de customisation ouvre bientot, ne rater rien de nos information");
    }

    public function AboutMeteo(){
        $this->genererVue(); 
    }
}