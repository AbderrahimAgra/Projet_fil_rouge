<?php

namespace Controllers;

use Models\AdminModel;

class Admin_Controller
{
    public function loginAdmin(){
    if(isset($_POST['login'])){
        $data = array(
            'email'=>$_POST['email'],
            'password'=>$_POST['password']
        );
        $isLoginSuccess=AdminModel::Login($data);
        if($isLoginSuccess){
            session_start();
            $_SESSION['email']=$_POST['email'];
            $_SESSION['admin']=true;
            header('location:dashboard');
        }else{
            echo "mot de passe erroné";
        }
    }
    else{
        echo 'error from submit login';
    }
}

}