<?php
class pgcomum
{

    public function renderPg()
    {
        $conteudo = new conteudoPost();
        $conteudo = $conteudo->ConteudoPag(strip_tags(trim(filter_input(INPUT_GET, "page", FILTER_DEFAULT))));
        $conteudo['conteudo_postagens'] = str_replace("</p>", "</p>||", $conteudo['conteudo_postagens']);
        $conteudo['conteudo_postagens'] = explode("||", $conteudo['conteudo_postagens']);
        function respaco($post){
            return trim($post);
        }
        $conteudo['conteudo_postagens'] = array_map('respaco', $conteudo['conteudo_postagens']);
        $conteudo['conteudo_postagens'] = implode("",$conteudo['conteudo_postagens']);
        $render =
            "<section class='pgc'>" .
                "<div class='titulo'>" .
                    "<h3 class='tituloPagina'>" . ucfirst($conteudo['titulo_postagens']) . "</h3>" .
                    "<div class='gl'>".
                        "<button class='gallery'>".
                            "<i class='flaticon-image-gallery'></i>".
                        "</button>".
                    "</div>".
                "</div>" .
                "<div class='contentpg'>".
                    $conteudo['conteudo_postagens'].
                "</div>".
            "</section>";
            return $render;
    }
}
