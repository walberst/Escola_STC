<?php
class conteudoUser extends conexaoBD{
    private $conect;

    function __construct() {
        $this->conect = conexaoBD::getInstance();

    }
    public function verificaLogin($user,$senha){
        try{
            $sql = "select * from autor where apelido_autor = :user and senha_autor = :pass";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":user",$user);
            $letsGo->bindValue(":pass",$senha);
            $letsGo->execute();
            if($letsGo->fetchAll(PDO::FETCH_ASSOC)){
                return true;
            }
            return false;
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }

    public function dadosUsuario($user,$senha){
        try{
            $sql = "select * from autor where apelido_autor = :user and senha_autor = :pass limit 1";
            $letsGo = $this->conect->prepare($sql);
            $letsGo->bindValue(":user",$user);
            $letsGo->bindValue(":pass",$senha);
            $letsGo->execute();
            return $letsGo->fetchAll(PDO::FETCH_ASSOC);
        }catch(Exception $e){
            echo $e->getMessage();
        }
    }
}