<?php

require_once("model/manager.php");


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
}