<?php
class conteudoTemplate extends conexaoBD{
    private $conect;

    function __construct(){
        $this->conect = conexaoBD::getInstance();
    }

    public function getMidiaTemplate($idHTML){
        try{
            $sql = "select * from midias_te where id_html = :idhtml";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":idhtml", $idHTML);
            $letsGo->execute();
            return $res = $letsGo->fetch(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function getMosaic($idHTML){
        try{
            $sql = "select * from itens_mosaico where id_mosaic = :idhtml";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":idhtml", $idHTML);
            $letsGo->execute();
            return $res = $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
}