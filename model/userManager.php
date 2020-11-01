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

}