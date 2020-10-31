<?php
class conteudoFooter extends conexaoBD{
    private $conect;

    function __construct(){
        $this->conect = conexaoBD::getInstance();
    }

    public function descFooter(){
        try{
            $sql = "SELECT desc_postagens FROM postagens where url_postagens = 'sobre'";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->execute();
            $res = $letsGo->fetch(PDO::FETCH_NUM);
            return $res[0];
        }catch(Exception $e){
            return $e->getMessage();
        }
    }
}