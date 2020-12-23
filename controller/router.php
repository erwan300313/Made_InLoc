<?php

require_once 'controller/request.php';
require_once 'framework/view.php';

class Router {

  public function routerRequest() {
    try {
      $requete = new Requete(array_merge($_GET, $_POST));
      $controller = $this->creerControleur($requete);
      $action = $this->creerAction($requete);

      $controller->executerAction($action);
    }
    catch (Exception $e) {
      $this->gererErreur($e);
    }
  }

  private function creerControleur(Requete $requete) {
    $controller = "Index";
    if ($requete->existeParametre('controller')) {
      $controller = $requete->getParametre('controller');
      $controller = ucfirst(strtolower($controller));
    }
    $classeController = $controller . "Controller" ;
    $fichierController = $classeController . ".php";
    if (file_exists('controller/' . $fichierController)) {
      require('controller/' . $fichierController);
      $controller = new $classeController();
      $controller->setRequete($requete);
      return $controller;
    }
    else
      throw new Exception("La page à laquelle vous souhaitez accéder n'est pas disponible");
  }

  private function creerAction(Requete $requete) {
    $action = "Index";
    if ($requete->existeParametre('action')) {
        $action = $requete->getParametre('action');
    }
    return $action;
  }

  private function gererErreur(Exception $exception) {
    $vue = new ViewManager('error');
    $vue->generate(array('errorMessage' => $exception->getMessage()));
  }
}