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
        $datas = $this->aboutManager->getPrice();
        $getPrices = $datas->fetchAll();
        if(!$datas){
            throw new Exception("Une erreur s'est produite lors du chargement de la page");
        }else{
            $this->genererVue(array('getPrices' => $getPrices));
        }
    }

    public function AboutCircuit(){
        $circuits = $this->aboutManager->getCircuits();
        if(!$circuits){
            throw new Exception("Une erreur s'est produite lors du chargement de la page");
        }else{
            $this->genererVue(array('circuits' => $circuits)); 
        }
    }

    public function AboutModel(){
        $motos = $this->aboutManager->getMotos();
        if(!$motos){
            throw new Exception("Une erreur s'est produite lors du chargement de la page");
        }else{
           $this->genererVue(array('motos' => $motos));  
        }
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