<?php
class conteudoMidias extends conexaoBD {
    private $conect;

    function __construct() {
        $this->conect = conexaoBD::getInstance();
    }

    public function getMidiaCapa($n){
        try {
            $sql = "SELECT caminho_midia FROM midias WHERE id_midias = :nid limit 1";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":nid",$n);
            $letsGo->execute();
            return  $letsGo->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function getUtimaMidiaCapa(){
        try {
            $sql = "SELECT id_midias FROM midias order by id_midias desc limit 1";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->execute();
            return  $letsGo->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function insertMidia($caminho_midia,$caminho_thumb, $descricao,$tags){
        try {
            $sql = "insert into midias values(default, :cam, :cat, :desc, :tag, 1,1, now())";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":cam",$caminho_midia);
            $letsGo->bindValue(":cat",$caminho_thumb);
            $letsGo->bindValue(":desc",$descricao);
            $letsGo->bindValue(":tag",$tags);
            return $letsGo->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}