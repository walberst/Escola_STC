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
            $sql="select distinct m.caminho_midia, pm.*, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens,p.capa_post from postagens p inner join postagens_midias pm on p.id_postagens = pm.fk_postagens inner join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where c.nome_categoria = :categoria group by fk_postagens order by p.data_modificacao_postagens, p.data_criacao_postagens desc limit 4;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":categoria",$categoria);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function getAll($categoria){
        try{
            $sql="select m.caminho_midia, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens, p.capa_post from postagens p left join postagens_midias pm on p.id_postagens = pm.fk_postagens left join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where c.nome_categoria = :categoria order by p.data_modificacao_postagens, p.data_criacao_postagens desc;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":categoria",$categoria);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
    
    public function search($pesquisa, $id){
        try{
            $sql = "select midias.caminho_midia, categoria.nome_categoria, postagens.titulo_postagens, postagens.desc_postagens, postagens.data_criacao_postagens, postagens.url_postagens, postagens.capa_post FROM postagens left join postagens_midias on postagens.id_postagens = postagens_midias.fk_postagens left join midias on midias.id_midias = postagens_midias.fk_midias INNER join categoria on categoria.id_categoria = postagens.categ_postagens where postagens.titulo_postagens LIKE :posts and nome_categoria = :id order by postagens.data_modificacao_postagens, postagens.data_criacao_postagens desc;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":posts","%".$pesquisa."%");
            $letsGo->bindValue(":id",$id);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
}