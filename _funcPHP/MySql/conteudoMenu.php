<?php
class conteudoMenu extends conexaoBD{
    private $conect;

    function __construct(){
        $this->conect = conexaoBD::getInstance();
    }

    public function getItensMenu(){
        try {
            $sql = "SELECT * FROM menu_itens";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_NUM);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function getDescMenu($url){
        try{
            $sql = "SELECT desc_postagens FROM postagens WHERE url_postagens = :url_post";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":url_post", $url);
            $letsGo->execute();
            return $letsGo->fetch(PDO::FETCH_NUM);
        }catch(Exception $e){

        }
    }

    public function ListaMenu(){
        $res = $this->getItensMenu();
        for($x = 0; $x < count($res); $x++){
            $descLink = $this->getDescMenu($res[$x][2]);
            @$descLink = substr($descLink[0], 0, 200);
            $res[$x] = "<li id='itens-menu-".$x."' class='pabx7'><a href='".URLBASE.$res[$x][2]."' alt='".$descLink."'>".$res[$x][1]."</a></li>";
        }
        return $res = implode("",$res);
    }
}