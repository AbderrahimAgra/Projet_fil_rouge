<?php

namespace Models;

use database\Connection;

class Ville_Model extends Connection
{
    function get(){
        $req=self::Connect()->prepare("SELECT * FROM `city`");
        $req->execute();
        $cities=$req->fetchAll();
        return $cities;
    }

}