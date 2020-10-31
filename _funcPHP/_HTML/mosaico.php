<?php
class mosaico{

    public function mosaic($id){
        $itens = new conteudoTemplate();
        $res = $itens->getMosaic($id);
        $mosaicItens = "";
        for($x=0;$x<count($res);$x++){
            if($res[$x]["img_mosaic"] != ""){
                $imgMosaico = "style='background-image: url(\"_midiasM/_imagensM/_original/".$res[$x]["img_mosaic"].".jpg\"); background-size: cover;'";
                $classTrans = "transp";
            }else{
                $imgMosaico = "";
                $classTrans = "";
            }
            $mosaicItens .= 
                "<div class='box' ".$imgMosaico.">".
                    "<div class='content ".$classTrans."'>".
                        "<h3 class='title-mosaic'>".$res[$x]["title_mosaic"]."</h3>".
                        "<p class='text-mosaic'>".$res[$x]["desc_mosaic"]."</p>".
                    "</div>".
                "</div>";
        }

        if($id == "infantil"){
            $titulo = "Educação Infantil";
        }else{
            $titulo = "Ensino Fundamental I";
        }

        $ms = 
        "<section id='".$id."' class='mos'>".
            "<h3 class='tituloPagina'>".$titulo."</h3>".
            "<div class='contencao'>".
                $mosaicItens.
            "</div>".
        "</section>";

        return $ms;
    }

}