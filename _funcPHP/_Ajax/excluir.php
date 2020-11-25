<?php
header('Content-Type: application/json');
require_once "../config.php";

$excluir = new conteudoPost();

$id = $_POST['excluir'];
var_dump($id);
if($excluir->excluiPostMidia($id)){
    if($excluir->excluiPost($id)){
        echo json_encode("true");
    }
}else{
    if($excluir->excluiPost($id)){
        echo json_encode("true");
    }
}