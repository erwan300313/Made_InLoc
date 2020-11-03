<?php

require_once("model/manager.php");


class UserManager extends Manager
{
    public function userCheck($pseudo) {
        $sql = 'SELECT pseudo FROM user WHERE pseudo = ? ';
        $userCheck = $this->executerRequete($sql, array($pseudo));
        return $userCheck->fetch(); 
    }

    public function addUser($firstName, $lastName, $pseudo, $pass_hache, $mail, $city, $birthday, $team) {
        $sql = 'INSERT INTO user(first_Name, last_Name, pseudo, password, mail, city, birthday, team, date_inscription) VALUES(?, ?, ?, ?, ?, ?, ?, ?,NOW())';
        $addUser = $this->executerRequete($sql, array($firstName, $lastName, $pseudo, $pass_hache, $mail, $city, $birthday, $team));
    }

    public function getUser($pseudo) {
        $sql = 'SELECT * FROM user WHERE pseudo = ? ';
        $getUser = $this->executerRequete($sql, array($pseudo));
        return $getUser->fetch(); 
    }

    public function addImg($user_id, $picture, $content) {
        $sql = 'INSERT INTO user_img(user_id, img, content) VALUES(?, ?, ?)';
        $addUser = $this->executerRequete($sql, array($user_id, $picture, $content));
    }

    public function getImg($id) {
        $sql = 'SELECT img, content FROM user_img WHERE user_id = ? ';
        $getImg = $this->executerRequete($sql, array($id));
        return $getImg; 
    }

}
