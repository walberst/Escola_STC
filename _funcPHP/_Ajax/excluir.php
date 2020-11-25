<?php
header('Content-Type: application/json');
require_once "../config.php";

$excluir = new conteudoPost();

$id = $_POST['excluir'];
var_dump($id);
if($excluir->excluiPostMidia($id)){
    echo json_encode("so midia");
    if($excluir->excluiPost($id)){
        echo json_encode("tudo");
    }
}else{
    if($excluir->excluiPost($id)){
        echo json_encode("so post");
    }
}