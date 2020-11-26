<?php

require_once("framework/model.php");


class AboutManager extends Manager
{
    public function getPrice($type){
        $sql = 'SELECT type, duration, price, km_included, extra_day, caution FROM rent WHERE type = ?';
        $getPrice = $this->executerRequete($sql, array($type));
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