<?php

namespace Models;

use database\Connection;

class AnnonceModel extends Connection {
    static public function add(){
        $sql="INSERT INTO annonce( `title`, `description`, `address`, `createAt`, `id_category`,
                      `id_type_annonce`, `id_object_state`) VALUES (:title,:description,:address,:createAt,:id_category);";
        $statment=self::Connect()->prepare($sql);
        $createdAt=date("Y-m-d H:i:s");
        $statment->bindParam(':title',$_POST['title']);
        $statment->bindParam(':description',$_POST['description']);
        $statment->bindParam(':address',$_POST['address']);
        $statment->bindParam(':createAt',$createdAt);
        $statment->bindParam(':id_category',$_POST['id_category']);
        $statment->execute();
        return $statment->rowCount()>0;

    }

}