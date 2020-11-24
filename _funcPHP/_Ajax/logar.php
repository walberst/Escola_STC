<?php
require_once "../config.php";

$user = $_POST['user'];
$senha = base64_encode($_POST['pass']);

$verifica = new conteudoUser();

if($verifica->verificaLogin($user,$senha)){
    $dadosUser = $verifica->dadosUsuario($user,$senha);
    $_SESSION['usr_logado'] = base64_encode('logado');
    $_SESSION['user'] = $user;
    $_SESSION['pass'] = $senha;
    $_SESSION['infos'] = base64_encode($dadosUser[0]['id_autor']."||".$dadosUser[0]['nome_autor']."||".$dadosUser[0]['apelido_autor']."||".$dadosUser[0]['criacao_autor']."||".$dadosUser[0]['ultimo_acesso_autor']."||".$dadosUser[0]['status_autor']);
    echo json_encode("true");
}