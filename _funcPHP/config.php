<?php

define("URLBASE", "http://localhost/projetointegrado/");

# Relativo ao banco de dados
define("HOST", "localhost"); 
define("BANK", "escola_stc");
define("USER", "root");
define("PASS", "");

# Auto carregar classes
function autoLoadClasses($class) {
    $baseDiretorios = ['MySql', "_HTML"];
    $analise = null;

    foreach ($baseDiretorios as $nomeDiretorio):
        if (!$analise && file_exists(__DIR__ . "/$nomeDiretorio/$class.php")):
            require_once(__DIR__ . "/$nomeDiretorio/$class.php");
            $analise = true;
        endif;
    endforeach;
}

spl_autoload_register("autoLoadClasses");