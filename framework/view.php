<?php

require_once 'framework/configuration.php';

class ViewManager {

private $file;
private $title;
private $script;

public function __construct($action, $controleur = "") {
     $file = "view/";
     if ($controleur != "") {
       $file = $file . $controleur . "/";
     }
     $this->file = $file . $action . ".php";
   }

public function generate($data) {
    $content = $this->generateFile($this->file, $data);
    $racineWeb = Configuration::get("racineWeb", "/");
    $view = $this->generateFile('view/template.php',
    array('title' => $this->title, 'content' => $content, 'script' => $this->script, 'racineWeb' => $racineWeb));
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
    throw new Exception("La page que vous souhaiter atteindre n'est pas disponible");
    }
}
}