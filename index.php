
<?php

require_once('autoload.php');
require_once('views/includes/header.php');
require_once('./app/Session.php');
use database\Connection;

//accessible pour tous le monde: signup /index(login client)/admin_login
//pour admin: dashboard
//pour les clients:annonce/homepage/profile
$pages = ['profile','signup','annonce','index','homepage','dashboard','admin_login','ajouter_annonce'];
$adminPages=['dashboard'];
$clientPages=['homepage','annonce','profile','ajouter_annonce'];
$protectedPages=array_merge($adminPages,$clientPages);
$page = str_replace("/PFR/",'',getRequestCleanUri());
//echo "page is ".$page;
function getRequestCleanUri()
{
    return parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
}
function view($viewName){
    include('views/'.$viewName.'.php');
}
//ouvrire la page correspondante
if(!in_array($page,$pages)){
    //echo "not in pages";
    //page does not exist
    view('includes/404');
}
else if(in_array($page,$protectedPages)){
    //echo "<br>protected page";
    session_start();
    //page is protcted
    if(isset($_SESSION['email'])) {
        //echo "<br>logged in";
        if (in_array($page, $adminPages) and $_SESSION['admin'] == true) {
            //echo "<br>for admin";
            view($page);
        } else if (in_array($page, $clientPages) and $_SESSION['admin'] == false) {
            //echo "<br>for client";
            view($page);
        } else {
            //echo "<br>protected and not the right role";
            view('includes/404');
        }
    }else{
        //echo "<br>lot logged in";
        header("location:index");
    }
}
else{
    //echo "<br>not protected";
    view($page);
}