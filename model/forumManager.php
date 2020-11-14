<?php

require_once("model/manager.php");


class ForumManager extends Manager
{
    public function getIndexTitles(){
        $sql = 'SELECT * FROM forumIndex';
        $getTitle = $this->executerRequete($sql, array());
        return $getTitle;
    }

    public function addLastTopic($title, $category_id) {
        $sql = 'UPDATE forumIndex SET lastTopic = ? WHERE topic_category_id = ?';
        $addLastTopic = $this->executerRequete($sql, array($title, $category_id));
    } 

    public function getLastTopic() {
        $sql = 'SELECT * FROM forumIndex ORDER BY id DESC';
        $getLastTopic = $this->executerRequete($sql, array());
        return $getLastTopic;
    } 

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

    public function updateTopic($topic_id, $content) {
        $sql = 'UPDATE topic SET content = ? WHERE id = ?';
        $updateTopic = $this->executerRequete($sql, array($content, $topic_id));
    }

    public function deleteTopic($topic_id) {
        $sql = 'DELETE from topic  WHERE id = ?';
        $deleteTopic = $this->executerRequete($sql, array($topic_id));
    }

    public function getComments($topic_id){
        $sql = 'SELECT *, author_inscription, DATE_FORMAT(date_creation, \'%d/%m/%Y\') AS date_creation FROM comments WHERE topic_id = ?';
        $getComments = $this->executerRequete($sql, array($topic_id));
        return $getComments;
    }

    public function getComment($comment_id){
        $sql = 'SELECT * FROM comments WHERE id = ?';
        $getComment = $this->executerRequete($sql, array($comment_id));
        return $getComment->fetch();
    }

    public function addTopic($author, $author_inscirption, $author_team, $category_id, $title, $content) {
        $sql = 'INSERT INTO topic(author, author_inscription, author_team, category_id, title, content, date_creation) VALUES(?, ?, ?, ?, ?, ?,NOW())';
        $addTopic = $this->executerRequete($sql, array($author, $author_inscirption, $author_team, $category_id, $title, $content));
    }

    public function addComment($topic_id, $author, $author_team, $author_inscription, $content) {
        $sql = 'INSERT INTO comments(topic_id, author, author_team, author_inscription, content, date_creation) VALUES(?, ?, ?, ?, ?,NOW())';
        $addComment = $this->executerRequete($sql, array($topic_id, $author, $author_team, $author_inscription, $content));
    }

    public function reportComment($comment_id, $newReport) {
        $sql = 'UPDATE comments SET report = ? WHERE id = ?';
        $reportComment = $this->executerRequete($sql, array($newReport, $comment_id));
    }

    public function updateComment($comment_id, $content) {
        $sql = 'UPDATE comments SET content = ? WHERE id = ?';
        $updateComment = $this->executerRequete($sql, array($content, $comment_id));
    }

    public function deleteComment($comment_id) {
        $sql = 'DELETE from comments  WHERE id = ?';
        $deleteComment = $this->executerRequete($sql, array($comment_id));
    }

    public function addImg($pseudo, $author_inscription,$author_team,$category_id, $title, $content, $img) {
        $sql = 'INSERT INTO topic(author, author_inscription, author_team, category_id, title, content, img, date_creation) VALUES(?, ?, ?, ?, ?, ?, ?, NOW())';
        $addImg = $this->executerRequete($sql, array($pseudo, $author_inscription,$author_team,$category_id, $title, $content, $img));
    }

    public function getImg($pseudo, $category_id) {
        $sql = 'SELECT img, title, content FROM topic WHERE author = ? AND category_id = ?';
        $getImg = $this->executerRequete($sql, array($pseudo, $category_id));
        return $getImg; 
    }
}