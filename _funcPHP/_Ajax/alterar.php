<?php
require_once "../config.php";

$alterar = new conteudoPost();
$id = $_POST['id'];
$retorno = $alterar->getById(intval($id));
echo json_encode($retorno);