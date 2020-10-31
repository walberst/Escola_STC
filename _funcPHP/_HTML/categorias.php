<?php
class categorias{
    public function pgCat($id){

        $postagens = new conteudoPost();
        $postagens = $postagens->getAll($id);
        $ctm = new conteudoMidias();

        if($id == "noticias"){
            $id = "Notícias";
        }else{
            $id = "Projetos";
        }
        
        if(isset($_POST["search"]) && $_POST["search"] != "" && $_POST["search"] != null):
            
            if($id == "Notícias"){
                $ids = "noticias";
            }else{
                $ids = "projetos";
            }
            echo $ids;
            $postagens = new conteudoPost();
            $postagens = $postagens->search($_POST["search"], $ids);
        endif;
        
        $listBox = "";
        for($x=0; $x < count($postagens); $x++){

            $imagens = explode(".", $postagens[$x]["caminho_midia"]);
            if(end($imagens) != "jpg"){
                $postagens[$x]["caminho_midia"] = $imagens[0].".jpg";
            }

            if($postagens[$x]["capa_post"] != ""){
                $img = $ctm->getMidiaCapa($postagens[$x]["capa_post"]);
                $img = $img["caminho_midia"];
            }else{
                $img = $postagens[$x]["caminho_midia"];
            }
            
            $listBox .= 
            "<div class='box-categ' id='".$id.$x."'>".
                "<a href='".strtolower($postagens[$x]["nome_categoria"])."/".$postagens[$x]["url_postagens"]."' alt='".$postagens[$x]["desc_postagens"]."'>".
                    "<div class='img-categ'>".
                        "<img src='_midiasM/_imagensM/_w250/".$img."' alt='".$postagens[$x]["desc_postagens"]."'>".
                    "</div>".
                    "<div class='desc-categ'>".
                        "<h4>".$postagens[$x]["titulo_postagens"]."</h4>".
                        "<p>".mb_strimwidth($postagens[$x]["desc_postagens"],0,350, "...")."</p>".
                    "</div>".
                    "<p class='data-post'><i class='flaticon-calendar'></i>".date("d/m/Y",strtotime($postagens[$x]["data_criacao_postagens"]))."</p>".
                    "<a class = 'leia-mais' href='".strtolower($postagens[$x]["nome_categoria"])."/".$postagens[$x]["url_postagens"]."' alt='".$postagens[$x]["desc_postagens"]."'>Leia mais...</a>".
                "</a>".
            "</div>";
        }
        
        $cat = 
        "<section id='' class=''>".
            "<div class=''>".
                "<h2>".ucfirst($id)."</h2>".
                "<form action='' method='POST'>".
                    "<input type='search' id='search' name='search' placehold='Pesquisar...'>".
                    "<input type='submit' value='Pesquisar' id='buscar'>".
                    "<ul class='achados'></ul>".
                "</form>".
            "</div>".
            "<div class=''>".
                "<div class='container'>".
                    $listBox.
                "</div>".
            "</div>".
        "</section>";
        return $cat;
    }
}