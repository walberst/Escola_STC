<?php
class listarArquivos{

    public function listarCss(){
            $diretorio = "_css/";
            $listagem = scandir($diretorio);
            $res = array();
            for($x = 0; $x < count($listagem); $x++){
                $arq = explode(".",$listagem[$x]);
                if($arq[1] == "css"){
                    if($arq[0] == "flaticon"){
                        $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                    }
                    if($arq[0] == "style"){
                        $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                    }
                    $url = strip_tags(trim(filter_input(INPUT_GET, "page", FILTER_DEFAULT)));
                    $url = $url == "" ? "home" : $url;
                    if($url == "home"){
                        if($arq[0] == "home"){
                            $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                        }
                    }elseif($url == "educacao-infantil" || $url == "ensino-fundamental"){
                        if($arq[0] == "mosaico"){
                            $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                        }
                    }elseif($url == "noticias" || $url == "projetos"){
                        if($arq[0] == "categorias"){
                            $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                        }
                    }elseif($url== "contato"){
                        if($arq[0] == "contato"){
                            $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                        }
                    }else{
                        if($arq[0] == "pgc"){
                            $res[$x] = "<link rel='stylesheet' type='text/css' href='_css/".$listagem[$x]."'/>";
                        }
                    }
                }
            }
            $res = implode("",$res);
            return $res;
    }
}


//<link rel='stylesheet' type='text/css' href='_Template/padrao/css/flaticon.css'/>