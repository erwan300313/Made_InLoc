<?php session_start()?>
<?php

require 'controller/router.php';

$router = new Router();
$router->routerRequest();