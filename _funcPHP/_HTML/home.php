<?php
class home{

    public function videoApresentacao(){
        $ctd = new conteudoTemplate();
        $res = $ctd->getMidiaTemplate("videoApresentacao");
        $videoApresentacao = 
            "<section id='videoApresentacao' class='sec-1'>".
                "<video id='video-ap' src='_midiasT/_videosT/m4v/".$res["titulo_te"].".m4v' autoplay='true' loop='true' muted='true' playsinline='true'>".
                    "<source src='_midiasT/_videosT/mp4/".$res["titulo_te"].".mp4' type='video/mp4'>".
                    "<source src='_midiasT/_videosT/webm/".$res["titulo_te"].".webm' type='video/webm'>".
                "</video>".
            "</section>";
        return $videoApresentacao;
    }

    public function mosaico(){
        $itens = new conteudoTemplate();
        $res = $itens->getMosaic("mosaico-ph");
        $mosaicItens = "";

        for($x=0;$x<count($res);$x++){
            if($res[$x]["img_mosaic"] != ""){
                $imgMosaico = "style='background-image: url(\"_midiasT/_imagensT/".$res[$x]["img_mosaic"].".jpg\"); background-size: cover;'";
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

        $mosaicoPH = 
        "<section id = 'mosaico-ph' class='sec-2'>".
            "<div class='contencao'>".
                $mosaicItens.
            "</div>".
        "</section>";

        return $mosaicoPH;
    }

    public function descricaoVideo($link, $id, $t1,$t2){
        $ctd = new conteudoTemplate();
        $getDesc = new conteudoPost();
        $desc = $getDesc->ConteudoPag($link);
        $res = $ctd->getMidiaTemplate($id);
        $secDesc = 
            "<section id='".$id."' class='sec-3'>".
                "<div class='caixa'>".
                    "<video src='_midiasT/_videosT/m4v/".$res["titulo_te"].".m4v' poster='_midiasT/_videosT/posters/".$res["titulo_te"].".jpg' controls='true' class='videoClip' playsinline='true'>".
                        "<source src='_midiasT/_videosT/mp4/".$res["titulo_te"].".mp4' type='video/mp4' />".
                        "<source src='_midiasT/_videosT/webm/".$res["titulo_te"].".webm' type='video/webm' />".
                    "</video>".
                "</div>".
                "<div class='caixa'>".
                    "<h2>".$t1." <span>".$t2."</span></h2>".
                    "<p>".$desc["desc_postagens"]."</p>".
                    "<a class='vt' href='".$link."' alt='".$desc["desc_postagens"]."'>Leia Mais...</a>".
                "</div>".
            "</section>";
        return $secDesc;
    }

    public function noticiasRecentes($categoria){
        $ctd = new conteudoPost();
        $ctm = new conteudoMidias();
        $categorias = $ctd->getCategoria($categoria);
        $listBox = "";

        for($x=0; $x < count($categorias); $x++){

            $imagens = explode(".", $categorias[$x]["caminho_midia"]);
            if(end($imagens) != "jpg"){
                $categorias[$x]["caminho_midia"] = $imagens[0].".jpg";
            }

            if($categorias[$x]["capa_post"] != ""){
                $img = $ctm->getMidiaCapa($categorias[$x]["capa_post"]);
                $img = $img["caminho_midia"];
            }else{
                $img = $categorias[$x]["caminho_midia"];
            }
            $listBox .= 
            "<div class='box-categ' id='".$categoria.$x."'>".
                "<a href='".strtolower($categorias[$x]["nome_categoria"])."/".$categorias[$x]["url_postagens"]."' alt='".$categorias[$x]["desc_postagens"]."'>".
                    "<div class='img-categ'>".
                        "<img src='_midiasM/_imagensM/_w250/".$img."' alt='".$categorias[$x]["desc_postagens"]."'>".
                    "</div>".
                    "<div class='desc-categ'>".
                        "<h4>".$categorias[$x]["titulo_postagens"]."</h4>".
                        "<p>".mb_strimwidth($categorias[$x]["desc_postagens"],0,350, "...")."</p>".
                    "</div>".
                    "<p class='data-post'><i class='flaticon-calendar'></i>".date("d/m/Y",strtotime($categorias[$x]["data_criacao_postagens"]))."</p>".
                    "<a class = 'leia-mais' href='".strtolower($categorias[$x]["nome_categoria"])."/".$categorias[$x]["url_postagens"]."' alt='".$categorias[$x]["desc_postagens"]."'>Leia mais...</a>".
                "</a>".
            "</div>";
        }
        if($categoria == "noticias"){
            $ttctg = "Notícias Recentes";
        }else{
            $ttctg = "Conheça nossos projetos";
        }
        $nr=
        "<section id='".$categoria."-recentes' class='sec-4'>".
            "<h3 class='titulo-sec'>".$ttctg."</h3>".
            "<div class='list-box'>".$listBox."</div>".
            "<div class='dv'>".
                "<a class='vt' href='".$categoria."' alt='Você será levado a página com todos os itens'>Ver todos...</a>".
            "</div>".
        "</section>";

        return $nr;
    }

}