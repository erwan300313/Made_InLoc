<?php

require_once 'request.php';
require_once 'view/view.php';

class Router {

  // Route une requête entrante : exécute l'action associée
  public function routerRequest() {
    try {
      // Fusion des paramètres GET et POST de la requête
      $requete = new Requete(array_merge($_GET, $_POST));

      $controller = $this->creerControleur($requete);
      $action = $this->creerAction($requete);

      $controller->executerAction($action);
    }
    catch (Exception $e) {
      $this->gererErreur($e);
    }
  }

  // Crée le contrôleur approprié en fonction de la requête reçue
  private function creerControleur(Requete $requete) {
    $controller = "Index";  // Contrôleur par défaut
    if ($requete->existeParametre('controller')) {
      $controller = $requete->getParametre('controller');
      $controller = ucfirst(strtolower($controller));
    }
    // Création du nom du fichier du contrôleur
    $classeController = $controller . "Controller" ;
    $fichierController = $classeController . ".php";
    if (file_exists('controller/' . $fichierController)) {
      // Instanciation du contrôleur adapté à la requête
      require('controller/' . $fichierController);
      $controller = new $classeController();
      $controller->setRequete($requete);
      return $controller;
    }
    else
      throw new Exception("Fichier '$fichierController' introuvable");
  }

  // Détermine l'action à exécuter en fonction de la requête reçue
  private function creerAction(Requete $requete) {
    $action = "Index";  // Action par défaut
    if ($requete->existeParametre('action')) {
        $action = $requete->getParametre('action');
    }
    return $action;
  }

  // Gère une erreur d'exécution (exception)
  private function gererErreur(Exception $exception) {
    $vue = new ViewManager('error');
    $vue->generate(array('errorMessage' => $exception->getMessage()));
  }
}