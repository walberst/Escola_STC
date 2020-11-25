<?php
require_once "../config.php";

$alterar = new conteudoPost();

$titulo = $_POST['titulo'];
$desc = $_POST['desc'];
$cont = $_POST['cont'];
$tags = $_POST['tags'] == "" ? "sn": $_POST['tags'];

$id = $_POST['ids'];
$id = intval($id);
$query = 'titulo_postagen = "'.$titulo.'", desc_postagens = "'.$desc.'", conteudo_postagens = "'.$cont.'" tags_postagens = "'.$tags.'" where id_postagens = '.$id.' ';
$status = "";
if($alterar->bigUpdatePost($query,$id)){
    $status .= "| ok |";
}

echo json_encode($status);