<?php

namespace Controllers;
use database\Connection;
use Models\Signup_Model;
use app\Redirect;

class Signup_Controller
{
        public function signup(){
            if(isset($_POST['submit']))
            {

                $data= array(

                    'firstname'=>$_POST['firstname'],
                    'lastname'=>$_POST['lastname'],
                    'email'=>$_POST['email'],
                    'phone'=>$_POST['phone'],
                    'password'=>$_POST['password'],
                );
                $signup = Signup_Model::Sign_up($data);
                if($signup=='ok'){

                echo 'sigu up successfully';
                }else
                {
                    echo 'Please check your Data';
                }
            }


        }

}
