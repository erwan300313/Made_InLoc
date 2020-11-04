<?php

require_once("model/manager.php");


class ForumManager extends Manager
{
    public function getTopics($category_id){
        $sql = 'SELECT *, DATE_FORMAT(date_creation, \'%d/%m/%Y\') AS date_creation  FROM topic WHERE category_id = ?';
        $getTopics = $this->executerRequete($sql, array($category_id));
        return $getTopics;
    }
}