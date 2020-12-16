<?php

require_once("framework/model.php");


class AboutManager extends Manager
{
    public function getPrice(){
        $sql = 'SELECT * FROM rent';
        $getPrice = $this->executerRequete($sql);
        return $getPrice;
    }

    public function getCircuits(){
        $sql = 'SELECT * FROM circuit';
        $getCircuits = $this->executerRequete($sql);
        return $getCircuits;
    }

    public function getMotos(){
        $sql = 'SELECT * FROM moto';
        $getMotos = $this->executerRequete($sql);
        return $getMotos;
    }


}