<?php

namespace Controllers;
use database\Connection;
use Models\Annonce_Model;
use app\Redirect;
use app\Session;
use Models\Category_model;
use Models\Ville_Model;

class Annonce_Controller
{
    public function addAnnonce(){
       //validation des entrées
        $annonceMode=new Annonce_Model();
        if($annonceMode->add()){
            header('location:homepage?message=annonce bien ajoutée');
        }else{
            echo" error";
        }

    }
    public function getVilles(){
        $vile=new Ville_Model();
        return $vile->get();
    }
    public function getCategory(){
        $category=new Category_model();
        return $category->get();
    }
    public function getAnnonces(){
        if(isset($_GET['search'])){
            $annonces=Annonce_Model::rechecher();
        }else
            $annonces=Annonce_Model::get();
        return $annonces;
    }

    public function getAnnonce(){
            $annonce=Annonce_Model::getAnnonceById($_GET['id']);
            $annonce['donations']=Annonce_Model::getDonationsCountByUserId($annonce['user_id']);
        return $annonce;
    }



}
