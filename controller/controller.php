<?php

abstract class Controller{

  // Action à réaliser
  private $action;

  // Requête entrante
  protected $requete;

  // Définit la requête entrante
  public function setRequete(Requete $requete) {
    $this->requete = $requete;
  }

  // Exécute l'action à réaliser
  public function executerAction($action) {
    if (method_exists($this, $action)) {
      $this->action = $action;
      $this->{$this->action}();
    }
    else {
      $classeControleur = get_class($this);
      throw new Exception("Action '$action' non définie dans la classe $classeControleur");
    }
  }

  // Méthode abstraite correspondant à l'action par défaut
  // Oblige les classes dérivées à implémenter cette action par défaut
  public abstract function index();


  protected function genererVue($donneesVue = array()) {
    $classeControleur = get_class($this);
    $controleur = str_replace("Controleur", "", $classeControleur);
    $vue = new ViewManager($this->action, $controleur);
    $vue->generate($donneesVue);
  }
}