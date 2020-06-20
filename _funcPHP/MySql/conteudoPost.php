<?php
class conteudoPost extends conexaoBD {
    private $conect;

    function __construct() {
        $this->conect = conexaoBD::getInstance();
    }

    public function ConteudoPag($url){
        try {
            $sql = "SELECT * FROM postagens WHERE url_postagens = :url_postagens";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":url_postagens",$url);
            $letsGo->execute();
            return  $letsGo->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function getCategoria($categoria){
        try{
            $sql="select distinct m.caminho_midia, pm.*, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens,p.capa_post from postagens p inner join postagens_midias pm on p.id_postagens = pm.fk_postagens inner join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where c.nome_categoria = :categoria group by fk_postagens order by p.id_postagens desc limit 4;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":categoria",$categoria);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
}