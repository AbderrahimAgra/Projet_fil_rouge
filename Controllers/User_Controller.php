<?php

namespace Controllers;
use database\Connection;
use Models\Login_Model;
use Models\UserModel;
use app\Redirect;
use app\Session;

class User_Controller
{
        public function signup(){

                $password= password_hash($_POST['password'],PASSWORD_DEFAULT);
                //password_verify('fromuser','hash');
                $data= array(

                    'firstname'=>$_POST['firstname'],
                    'lastname'=>$_POST['lastname'],
                    'email'=>$_POST['email'],
                    'phone'=>$_POST['phone'],
                    'password'=>$password,
                );
                if(UserModel::Sign_up($data)){
                    echo 'new leader added';
                }else{
                    echo 'faied to add';
                }
        }

    public function loginClient(){
            $error=false;
            if(isset($_POST['login'])){
            $data = array(
                'email'=>$_POST['email'],
                'password'=>$_POST['password']
            );
            $isLoginSuccess=UserModel::Login($data);
            if($isLoginSuccess){
                session_start();
                $_SESSION['user_id']=$isLoginSuccess['id'];
                $_SESSION['email']=$_POST['email'];
                $_SESSION['admin']=false;
                header('location:homepage');
            }
            else $error=true;
        }
            return $error;
    }


}
