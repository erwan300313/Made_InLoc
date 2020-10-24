<?php

class ViewManager {

private $file;
private $title;

public function __construct($action, $controleur = "") {
     $file = "view/";
     if ($controleur != "") {
       $file = $file . $controleur . "/";
     }
     $this->file = $file . $action . ".php";
   }

public function generate($data) {
    $content = $this->generateFile($this->file, $data);
    $view = $this->generateFile('view/template.php',
    array('title' => $this->title, 'content' => $content));
    echo $view;
}

private function generateFile($file, $data) {
    if (file_exists($file)) {
    extract($data);
    ob_start();
    require $file;
    return ob_get_clean();
    }
    else {
    throw new Exception("Fichier '$file' introuvable");
    }
}
}