<?php

    namespace Models;
    use database\Connection;


    class Signup_Model{
    static public function Sign_up($data){
        $sql= "INSERT INTO `user`( `firsname`, `lastname`, `email`, `password`) VALUES 
        (:firstname,:lastname,:email,:password )";
        $sth= Connection::Connect()->prepare($sql);
        $sth->bindParam('firstname', $_POST['firstname']);
        $sth->bindParam('lastname', $_POST['lastname']);
        $sth->bindParam('email', $_POST['email']);
        $sth->bindParam('password', $_POST['password']);
       if( $sth->execute()){


           return 'ok';
       } else {

           echo 'Something Wrong';
       }


    }

    }