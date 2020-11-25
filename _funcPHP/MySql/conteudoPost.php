<?php
class conteudoPost extends conexaoBD {
    private $conect;

    function __construct() {
        $this->conect = conexaoBD::getInstance();

    }

    public function ConteudoPag($url){
        try {
            $sql = "SELECT * FROM postagens WHERE url_postagens = :url_postagens and  status_postagens = 1";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":url_postagens",$url);
            $letsGo->execute();
            return  $letsGo->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function getById($id){
        try{
            $sql="select p.id_postagens, m.caminho_midia,p.conteudo_postagens,p.tags_postagens, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens, p.capa_post from postagens p left join postagens_midias pm on p.id_postagens = pm.fk_postagens left join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where p.status_postagens = 1 and p.id_postagens = :id order by p.data_modificacao_postagens, p.data_criacao_postagens desc limit 1;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":id",$id);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function getCategoria($categoria){
        try{
            $sql="select distinct m.caminho_midia, pm.*, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens,p.capa_post from postagens p inner join postagens_midias pm on p.id_postagens = pm.fk_postagens inner join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where p.status_postagens = 1 and c.nome_categoria = :categoria group by fk_postagens order by p.data_modificacao_postagens, p.data_criacao_postagens desc limit 4;";
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
            $sql="select p.id_postagens, m.caminho_midia, c.nome_categoria, p.titulo_postagens, p.desc_postagens, p.data_criacao_postagens, p.url_postagens, p.capa_post from postagens p left join postagens_midias pm on p.id_postagens = pm.fk_postagens left join midias m on m.id_midias = pm.fk_midias join categoria c on c.id_categoria = p.categ_postagens where p.status_postagens = 1 and c.nome_categoria = :categoria order by p.data_modificacao_postagens, p.data_criacao_postagens desc;";
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
            $sql = "select midias.caminho_midia, categoria.nome_categoria, postagens.titulo_postagens, postagens.desc_postagens, postagens.data_criacao_postagens, postagens.url_postagens, postagens.capa_post FROM postagens left join postagens_midias on postagens.id_postagens = postagens_midias.fk_postagens left join midias on midias.id_midias = postagens_midias.fk_midias INNER join categoria on categoria.id_categoria = postagens.categ_postagens where postagens.status_postagens = 1 and postagens.titulo_postagens LIKE :posts and nome_categoria = :id order by postagens.data_modificacao_postagens, postagens.data_criacao_postagens desc;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":posts","%".$pesquisa."%");
            $letsGo->bindValue(":id",$id);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function inserirPost($titulo, $desc,$cont,$tags,$url,$categ,$capa){
        try{
            $sql="insert into postagens values(default, :titulo , :desc , :cont , :tags , now() , null,0,1,1, :url , :categ , :capa);";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":titulo",$titulo);
            $letsGo->bindValue(":desc",$desc);
            $letsGo->bindValue(":cont",$cont);
            $letsGo->bindValue(":tags",$tags);
            $letsGo->bindValue(":url",$url);
            $letsGo->bindValue(":categ",$categ);
            $letsGo->bindValue(":capa",$capa);
            return $letsGo->execute();
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function inserirPostMidia($postagem, $midia){
        try{
            $sql="insert into postagens_midias values(default, :fkp, :fkm);";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":fkp",$postagem);
            $letsGo->bindValue(":fkm",$midia);
            return $letsGo->execute();
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function getUtimoPost(){
        try {
            $sql = "SELECT id_postagens FROM postagens where status_postagens = 1 order by id_postagens desc limit 1";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->execute();
            return  $letsGo->fetch(PDO::FETCH_ASSOC);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function updatePost($coluna, $valor, $id){
        try {
            $sql = "update postagens set $coluna = $valor where id_postagens = $id ;";
            $letsGo = $this->conect->prepare($sql);
            return $letsGo->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
    
    public function bigUpdatePost($coluna){
        try {
            $sql = "update postagens set $coluna ;";
            $letsGo = $this->conect->prepare($sql);
            return $letsGo->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function excluiPostMidia($id){
        try {
            $sql = "delete from postagens_midias where fk_postagens = :id ;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":id",$id);
            return $letsGo->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function excluiPost($id){
        try {
            $sql = "delete from postagens where id_postagens = :id ;";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":id",$id);
            return $letsGo->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

}