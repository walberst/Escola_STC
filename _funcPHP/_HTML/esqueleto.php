<?php
class esqueleto{

    private $conteudoPag;

    function __construct($dataPost){
        $this->conteudoPag = $dataPost;
    }

    public function html5(){
        $listaArquivos = new listarArquivos();
        $base = 
        "<!DOCTYPE html5>".
        "<html lang = 'pt-br'>".
        "<head>".
            "<title>Escola TSC | ".ucfirst(@$this->conteudoPag["titulo_postagens"])."</title>".
            "<meta charset = 'UTF-8'/>".
            "<meta name='description' content='".@$this->conteudoPag["desc_postagens"]."'>".
            "<meta name='keywords' content='".@$this->conteudoPag["tags_postagens"]."'>".
            "<meta name='author' content='Antonio Walber - antoniowalber3000@hotmail.com.br'>".
            "<meta name='viewport' content='width=device-width, initial-scale=1.0'>".
            "<meta http-equiv='X-UA-Compatible' content='ie=edge'>".
            "<link rel='stylesheet' href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css'>".
            "<link rel='shortcut icon' href='_midiasT/_imagensT/icon.ico' type='image/x-icon' />".
            $listaArquivos->listarCss().
        "</head>".
        "<body>".
        "<div id='container' class='pabx1'>".
            $this->cabecalho().
            "<div id = 'corpo-pagina'>".
                $this->paginacao().       
            "</div>".
            $this->rodape().
        "</div>".
        "</body>". 
        "</html>"
        ;
        echo $base;
    }
    
    private function cabecalho(){
        $contMenu = new conteudoMenu();
        $cabecalho = 
        "<header id='cabecalho' class='pabx2'>".
            "<div id='logo' class='pabx3'>".
                "<a href='".URLBASE."' alt='pagina inicial do site'><img src='_midiasT/_imagensT/logo.svg' alt='logotipo escola primeira'/></a>".
            "</div>".
            "<div id='menu' class='pabx4'>".
                "<nav id='navegacao' class='pabx5'>".
                    "<input id='tab-nav' type='checkbox' class='tab-nav'/>".
                    "<label for='tab-nav' class='tab-nav-label'><i class='flaticon-menu-button-of-three-horizontal-lines'></i></label>".
                    "<menu id='corpo-menu' class='pabx6'>"
                        .$contMenu->ListaMenu().
                    "</menu>".
                "</nav>".
            "</div>".
            "<div id='redes-sociais' class='pabx8'>".
                "<a href='https://pt-br.facebook.com/' onmousemove=\"document.getElementById('balaof').style.display='block'\" onmouseout=\"document.getElementById('balaof').style.display='none'\" target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-facebook socialMedia' id='facebook'></i></a>".
                "<a href='https://www.instagram.com/' onmousemove=\"document.getElementById('balaoi').style.display='block'\" onmouseout=\"document.getElementById('balaoi').style.display='none'\" target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-instagram socialMedia' id='instagram'></i></a>".
                "<div id='balaof' class='balao'><p>fb/escolatsc</p></div>".
                "<div id='balaoi' class='balao'><p>@escolatsc</p></div>".
            "</div>".
        "</header>";

        return $cabecalho;
    }

    private function paginacao(){
        $url = strip_tags(trim(filter_input(INPUT_GET, "page", FILTER_DEFAULT)));
        $url = $url == "" ? "home" : $url;
        if($this->conteudoPag == null){
            return "Erro 404";
        }else{
            if($this->conteudoPag["url_postagens"] == $url){
                if($url == "home"){
                    $pg = "";
                    $home = new home();
                    $pg .= $home->videoApresentacao();
                    $pg .= $home->mosaico("mosaico-ph");
                    $pg .= $home->descricaoVideo("sobre","descPrimeira","Escola","TSC");
                    $pg .= $home->noticiasRecentes("noticias");
                    $pg .= $home->descricaoVideo("ingles","descIngles","Programa","Bilíngue");
                    $pg .= $home->noticiasRecentes("projetos");

                    return $pg;

                }if($url == "educacao-infantil" || $url == "ensino-fundamental"){
                    $ms = new mosaico();
                    if($url == "educacao-infantil"){
                        $mosaico = $ms->mosaic("infantil");
                    }else{
                        $mosaico = $ms->mosaic("fundamental");
                    }
                    return $mosaico;
                }elseif($url == "noticias" || $url == "projetos"){
                    $pgcat = new categorias();
                    if($url == "noticias"){
                        $cat = $pgcat->pgCat("noticias");

                        return $cat;
                    }else{
                        $cat = $pgcat->pgCat("projetos");
                    }
                    return $cat;
                }elseif($url== "contato"){
                    return "Pagina em construção";
                }else{
                    $pgc = new pgcomum();
                    return $pgc->renderPg();
                }
            }
        }

    }

    private function rodape(){
        $contFooter = new conteudoFooter();
        $rodape = 
        "<footer id='rodape' class='pabx9'>".
            "<div class='pabx10'>".
                "<div id='logo' class='pabx11'>".
                    "<a href='".URLBASE."' alt='Pagina inicial do site'><img src='_midiasT/_imagensT/logo.svg' alt='logotipo escola primeira'/></a>".
                "</div>".
                "<div class='pabx12' id='desc-footer'>".
                   "<a href='a-escola-primeira' alt='".$contFooter->descFooter()."'>" .$contFooter->descFooter(). "</a>".
                "</div>".
            "</div>".
            "<div class='pabx10' id='mapa-escola'>".
                "<iframe src='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d147708.7333704633!2d-45.65175222808894!3d-24.124031904571087!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94d25eb79db5dc93%3A0x13af0844526a5472!2sRef%C3%BAgio%20de%20Vida%20Silvestre%20do%20Arquip%C3%A9lago%20de%20Alcatrazes!5e0!3m2!1spt-BR!2sbr!4v1590716877943!5m2!1spt-BR!2sbr' width='600' height='450' frameborder='0' style='border:0;' allowfullscreen='' aria-hidden='false' tabindex='0'></iframe>".
            "</div>".
            "<div class='pabx10' id='contact'>".
                "<div class='pabx15' id='title-contact'>".
                    "<h1>Contato</h1>".
                "</div>".
                "<div class='pabx15' id='infos-contact'>".
                    "<p><i class='flaticon-tool'></i><a target='_blank' rel='noopener noreferrer' href='https://goo.gl/maps/AhcGYK8L1g5hPTFk7'> Rua dos bobos, 0 | São Paulo - SP</a></p>".
                    "<p><i class='flaticon-phone-call'></i><a href='tel:1138424500'> (11) 4002-8922</a></p>".
                    "<p><i class='flaticon-mail-closed-envelope-back'></i><a href='mailto:contato@escolatsc.com.br'> contato@escolatsc.com.br</a></p>".
                "</div>".
                "<div class='pabx15' id='redes-sociais'>".
                    "<a href='https://pt-br.facebook.com/' target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-facebook socialMedia' id='facebook'></i></a>".
                    "<a href='https://www.instagram.com/'  target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-instagram socialMedia' id='instagram'></i></a>".
                    "<div id='balaofc' class='balao'><p>fb/escola.primeira</p></div>".
                    "<div id='balaoic' class='balao'><p>@escolaprimeira</p></div>".
                "</div>".
            "</div>".
        "</footer>";
        return $rodape;
    }

}