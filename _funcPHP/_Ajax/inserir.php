<?php
require_once "../config.php";

$inserir = new conteudoPost();
$enviaImg = new conteudoMidias();

$titulo = $_POST["titulo"];
$desc = $_POST["desc"];
$cont = $_POST["cont"];
$tags = $_POST["tags"];
$categ = $_POST["categ"];
$capa = $_POST['img'];

$url = explode(" ", trim(strtolower($titulo)));
$url = implode("-", $url);
$url = preg_replace(array("/(á|à|ã|â|ä)/", "/(Á|À|Ã|Â|Ä)/", "/(é|è|ê|ë)/", "/(É|È|Ê|Ë)/", "/(í|ì|î|ï)/", "/(Í|Ì|Î|Ï)/", "/(ó|ò|õ|ô|ö)/", "/(Ó|Ò|Õ|Ô|Ö)/", "/(ú|ù|û|ü)/", "/(Ú|Ù|Û|Ü)/", "/(ñ)/", "/(Ñ)/"), explode(" ", "a A e E i I o O u U n N"), $url);

$id_post = $inserir->getUtimoPost();
$id_midia = $enviaImg->getUtimaMidiaCapa();
$coluna = 'capa_post';
var_dump(intval($id_midia['id_midias']));
if ($inserir->inserirPost($titulo, $desc, $cont, $tags, $url, $categ, null)) {
    if($capa){
        if ($inserir->updatePost($coluna, $id_midia['id_midias'], $id_post['id_postagens'])) {
            echo 1;
        }else{
            echo $inserir->updatePost($coluna, $id_midia['id_midias'], $id_post['id_postagens']);
        }
    }
    echo 1;
}
