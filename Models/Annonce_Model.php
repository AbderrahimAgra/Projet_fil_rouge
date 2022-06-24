<?php

namespace Models;

use database\Connection;

class Annonce_Model extends Connection {
    static public function add(){
        $createdAt=date("Y-m-d H:i:s");
        $sql="INSERT INTO annonce( `title`, `description`, `address`, `createAt`, `id_category`,`id_type_annonce`,`user_id`)
VALUES ('".$_POST['title']."','".$_POST['description']."','".$_POST['city']."','".$createdAt."','".$_POST['category']."',1,'".$_SESSION['user_id']."');";
        $statment=self::Connect()->prepare($sql);
        $statment->execute();
        return $statment->rowCount()>0;

    }
    static public function get(){
        $sql="SELECT * FROM annonce";
        $statment=self::Connect()->prepare($sql);
        $statment->execute();
        return $statment->fetchAll();

    }
    static public function rechecher(){
        $sql="SELECT * FROM annonce WHERE 1=1 ";
        if($_GET['city']!='0'){
            $sql.=" AND address='".$_GET['city']."'";
        }
        if($_GET['category']!='0'){
            $sql.="AND id_category='".$_GET['category']."'";
        }
        if($_GET['availability']!='all'){
            $sql.="AND id_type_annonce='".$_GET['availability']."'";
        }
        echo "sql:".$sql;
        $statment=self::Connect()->prepare($sql);
        $statment->execute();
        return $statment->fetchAll();

    }

    public static function getAnnonceById($id)
    {
        $sql="SELECT * FROM annonce INNER JOIN user ON user.id =annonce.user_id WHERE annonce.id=$id; ";
        $statment=self::Connect()->prepare($sql);
        $statment->execute();
        return $statment->fetch(\PDO::FETCH_ASSOC);
    }

    public static function getDonationsCountByUserId($id){
        $sql="SELECT count(*) FROM annonce WHERE annonce.user_id=$id;";
        $statment=self::Connect()->prepare($sql);
        $statment->execute();
        return $statment->fetch(\PDO::FETCH_COLUMN);
    }

}