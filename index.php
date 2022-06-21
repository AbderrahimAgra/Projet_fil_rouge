
    <?php

    require_once('autoload.php');
    require_once('views/includes/header.php');
    require_once('./app/Session.php');
    use database\Connection;

    $pages = ['home','signup','annonce','index','homepage','dashboard','login','admin_login'];
        $page = str_replace("/PFR/",'',getRequestCleanUri());
        if ((in_array($page, $pages))) {
            view($page);
        } else if($page==''){
             view('index');
        }else{
           view('includes/404');
        }

        function getRequestCleanUri()
        {
            return parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    }
    function view($viewName){
        include('views/'.$viewName.'.php');
    }