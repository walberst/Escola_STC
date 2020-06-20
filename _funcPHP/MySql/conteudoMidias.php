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
}