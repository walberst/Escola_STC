<?php
require_once "../config.php";

$enviaImg = new conteudoMidias();

$filename = $_FILES['file']['name'];

$location = $_SERVER["DOCUMENT_ROOT"] . "/Escola_STC/_midiasM/_imagensM/_w250/" . $filename;
$pasta = $_SERVER["DOCUMENT_ROOT"] . "/Escola_STC/_midiasM/_imagensM/_w250/";

$uploadOk = 1;

$imageFileType = pathinfo($location, PATHINFO_EXTENSION);

$validExtension = array("jpg");

if (!in_array(strtolower($imageFileType), $validExtension)) {
    $uploadOk = 0;
}

if ($uploadOk == 0) {
    echo 0;
} else {
    if (move_uploaded_file($_FILES['file']['tmp_name'], $pasta.time().$filename)) {
        if ($enviaImg->insertMidia(time().$filename, time().$filename, time().$filename, "padrao")) {
            echo 1;
        }
    } else {
        echo 0;
    }
}
