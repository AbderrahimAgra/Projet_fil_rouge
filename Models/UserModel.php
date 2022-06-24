<?php

namespace Models;
use database\Connection;


    class UserModel extends Connection{
    static public function Sign_up($data){
        $sql= "INSERT INTO `user`( `firsname`, `lastname`, `email`, `password`) VALUES 
        (:firstname,:lastname,:email,:password )";
        $sth= Connection::Connect()->prepare($sql);
        $sth->bindParam('firstname', $_POST['firstname']);
        $sth->bindParam('lastname', $_POST['lastname']);
        $sth->bindParam('email', $_POST['email']);
        $sth->bindParam('password', $data['password']);
       $sth->execute();
       return $sth->rowCount()>0;

    }
        static public function Login($data){
            $email= $data['email'];
            $password= $data['password'];
            $sql="SELECT * FROM user WHERE email=:email;";
            $statment=self::Connect()->prepare($sql);
            $statment->bindParam(':email',$email);
            $statment->execute();
            $user=$statment->fetch(\PDO::FETCH_ASSOC);
            $res=$user && password_verify($password,$user['password']);
            return $res ? $user:false;
        }

}