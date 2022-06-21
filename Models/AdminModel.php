<?php

namespace Models;

use database\Connection;

class AdminModel extends Connection
{
        static public function Login($data){
            var_dump($data);
            $email= $data['email'];
            $password= $data['password'];
            $sql="SELECT * FROM admin WHERE email=:email;";
            $statment=self::Connect()->prepare($sql);
            $statment->bindParam(':email',$email);
            $statment->execute();
            $user=$statment->fetch(\PDO::FETCH_ASSOC);
            var_dump($user);
            return $user && password_verify($password,$user['password']);
        }

}