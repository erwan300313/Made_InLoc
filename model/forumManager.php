<?php

require_once("model/manager.php");


class ForumManager extends Manager
{


    public function getTopics($category_id){
        $sql = 'SELECT *, DATE_FORMAT(date_creation, \'%d/%m/%Y\') AS date_creation  FROM topic WHERE category_id = ? ORDER BY id DESC';
        $getTopics = $this->executerRequete($sql, array($category_id));
        return $getTopics;
    }

    public function getTopic($topic_id){
        $sql = 'SELECT *, author_inscription, DATE_FORMAT(date_creation, \'%d/%m/%Y\') AS date_creation  FROM topic WHERE id = ?';
        $getTopic = $this->executerRequete($sql, array($topic_id));
        return $getTopic->fetch();;
    }

    public function getComments($topic_id){
        $sql = 'SELECT *, DATE_FORMAT(author_inscription, \'%d/%m/%Y\') AS author_inscription, DATE_FORMAT(date_creation, \'%d/%m/%Y\') AS date_creation FROM comments WHERE topic_id = ?';
        $getComments = $this->executerRequete($sql, array($topic_id));
        return $getComments;
    }

    public function addTopic($author, $author_inscirption, $author_team, $category_id, $title, $content) {
        $sql = 'INSERT INTO topic(author, author_inscription, author_team, category_id, title, content, date_creation) VALUES(?, ?, ?, ?, ?, ?,NOW())';
        $addUser = $this->executerRequete($sql, array($author, $author_inscirption, $author_team, $category_id, $title, $content));
    }
}