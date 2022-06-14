
<?php

require_once('autoload.php');
require_once('views/includes/header.php');
require_once('./app/Session.php');
use database\Connection;
use controllers\HomeController;
$home = new HomeController();
$pages = ['home','index','homepage'];
    $page = str_replace("/PFR/",'',getRequestCleanUri());
    if ((in_array($page, $pages))) {
        $home->index($page);
    } else if($page==''){


          $home->index('index');
    }else{
       
        include('views/includes/404.php');
    }

    function getRequestCleanUri(){
        return parse_url($_SERVER['REQUEST_URI'],PHP_URL_PATH);
    }