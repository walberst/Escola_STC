<?php
    require_once("_funcPHP/config.php"); 
    session_start();
    $url = strip_tags(trim(filter_input(INPUT_GET, "page", FILTER_DEFAULT))) == "" ? "home" : strip_tags(trim(filter_input(INPUT_GET, "page", FILTER_DEFAULT)));
    $contPag = new conteudoPost();
    $dadosPagina = $contPag->conteudoPag($url);
    $html = new esqueleto($dadosPagina);

    $html->html5();
?>