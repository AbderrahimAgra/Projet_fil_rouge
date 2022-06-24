<?php

namespace Models;

use database\Connection;

class Category_model
extends Connection {
    function get(){
        $req=self::Connect()->prepare("SELECT * FROM `category`");
        $req->execute();
        return $req->fetchAll();
    }
}