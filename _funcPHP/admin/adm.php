<?php
class adm{
    public function admin(){
        $posts = new conteudoPost();
        $noticias = $posts->getAll('noticias');
        $postagens = $posts->getAll('projetos');
        
        $postNoticias = "";
        $postProjetos = "";

        for($x = 0; $x < count($noticias); $x++){
            $postNoticias .= "<tr><td class='tdid'>".$noticias[$x]['id_postagens']."</td><td class='tdtt'>".$noticias[$x]['titulo_postagens']."</td><td class='tddt'>".date("d/m/Y",strtotime($noticias[$x]['data_criacao_postagens']))."</td><td class='btn mn'><button value='".$noticias[$x]['id_postagens']."' class='alterar'>Alterar</button></td><td class='btn mn'><button value='".$noticias[$x]['id_postagens']."' class='excluir'>Excluir</button></td></tr>";
        }

        for($y = 0; $y < count($postagens); $y++){
            $postProjetos .= "<tr><td class='tdid'>".$postagens[$y]['id_postagens']."</td><td class='tdtt'>".$postagens[$y]['titulo_postagens']."</td><td class='tddt'>".date("d/m/Y",strtotime($postagens[$y]['data_criacao_postagens']))."</td><td class='btn mn'><button value='".$postagens[$y]['id_postagens']."' class='alterar'>Alterar</button></td><td class='btn mn'><button value='".$postagens[$y]['id_postagens']."' class='excluir'>Excluir</button></td></tr>";
        }

        $pagAdm = 
            "<section id='pain-adm'>".
                "<table id='tb1'>".
                    "<thead>".
                        "<tr><td colspan='3' class='tit'>Projetos</td><td class='btn' colspan='2'><button id='inp'>Criar nova postagem em projetos</button></td></tr>".
                        "<tr>".
                            "<th>ID</th>".
                            "<th>TITULO</th>".
                            "<th>DATA DE CRIAÇÃO</th>".
                            "<th></th>".
                            "<th></th>".
                        "</tr>".
                    "</thead>".
                    "<tbody>".
                        $postProjetos.
                    "</tbody>".
                "</table>".
                "<table id='tb2'>".
                    "<thead>".
                        "<tr><td colspan='3' class='tit'>Notícias</td><td class='btn' colspan='2'><button id='inn'>Criar nova postagem em noticias</button></td></tr>".
                        "<tr>".
                            "<th>ID</th>".
                            "<th>TITULO</th>".
                            "<th>DATA DE CRIAÇÃO</th>".
                            "<th></th>".
                            "<th></th>".
                        "</tr>".
                    "</thead>".
                    "<tbody>".
                        $postNoticias.
                    "</tbody>".
                "</table>".
            "</section>".
            "<div class='crud' id='crud'>".
                "<form action='' method='post'>".
                    "<h3></h3>".
                    "<div class='clabel'>".
                        "<label for='titulo'>Titulo:</label>".
                        "<input type='text' name='titulo' id='titulo'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='desc'>Descrição:</label>".
                        "<textarea name='desc' id='desc'></textarea>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='cont'>Conteudo:</label>".
                        "<textarea name='cont' id='cont'></textarea>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='tags'>Tags:</label>".
                        "<input type='text' name='tags' id='tags'>".
                    "</div>".
                    "<div class='clabel' id='img'>".
                        "<label for='img'>Imagem:</label>".
                        "<input type='file' name='img' id='img'>".
                    "</div>".
                    "<div class='btn'><button value='' id='salvar'>Salvar</button><button id='cancelar'>Cancelar</button></div>".
                "</form>".
            "</div>".
            "<script src='https://code.jquery.com/jquery-3.5.1.min.js'></script>".
            "<script>".
                "function foi(){".
                    "alert('Ação concluida com sucesso');".
                    "$('#crud').hide();".
                    "location.reload();".
                "}".
                "$('#cancelar').click(function(envent){".
                    "event.preventDefault();".
                    "$('#crud').hide();".
                "});".
                "$('#inp').click(function(event){".
                    "event.preventDefault();".
                    "$('#crud').show();".
                    "$('#crud form h3').html('Inserir postagem em projetos.');".
                    "$('#salvar').val(2);".
                    "$('#salvar').click(function(salva){".
                        "salva.preventDefault();".
                        "$.ajax({".
                            "method: 'post',".
                            "url: '".URLBASE."_funcPHP/_Ajax/inserir.php',".
                            "data:{".
                                "titulo : $('#titulo').val(),".
                                "desc : $('#desc').val(),".
                                "cont : $('#cont').val(),".
                                "tags : $('#tags').val(),".
                                "img : $('#img').val(),".
                                "categ : $('#salvar').val()".
                            "}".
                        "}).done(foi());".
                    "});".
                "});".

                "$('#inn').click(function(event){".
                    "event.preventDefault();".
                    "$('#crud').show();".
                    "$('#crud form h3').html('Inserir postagem em notícias.');".
                    "$('#salvar').val(1);".
                    "$('#salvar').click(function(salva){".
                        "salva.preventDefault();".
                        "$.ajax({".
                            "method: 'post',".
                            "url: '".URLBASE."_funcPHP/_Ajax/inserir.php',".
                            "data:{".
                                "titulo : $('#titulo').val(),".
                                "desc : $('#desc').val(),".
                                "cont : $('#cont').val(),".
                                "tags : $('#tags').val(),".
                                "img : $('#img').val(),".
                                "categ : $('#salvar').val()".
                            "}".
                        "}).done(foi());".
                    "});".
                "});".

                

                "$('.excluir').click(function(ex){".
                    "ex.preventDefault();".
                        "$.ajax({".
                            "method: 'post',".
                            "url: '".URLBASE."_funcPHP/_Ajax/excluir.php',".
                            "data:{".
                                "excluir : $(this).val()".
                            "}".
                        "}).done(foi());".
                "});".
                "let id = '';".
                "$('.alterar').click(function(al){".
                    "id = $(this).val();".
                    "$('#salvar').val($(this).val());".
                    "al.preventDefault();".
                    "$('#crud').show();".
                    "$('#img').hide();".
                    "$.ajax({".
                        "method: 'post',".
                        "dataType: 'json',".
                        "url: '".URLBASE."_funcPHP/_Ajax/alterar.php',".
                        "data: {id: $(this).val()},".
                    "}).done(function(dado){".
                        "$('#titulo').val(dado[0]['titulo_postagens']);".
                        "$('#desc').val(dado[0]['desc_postagens']);".
                        "$('#cont').val(dado[0]['conteudo_postagens']);".
                        "$('#tags').val(dado[0]['tags_postagens']);".
                    "}).fail(function(xhr, status, error) {".
                        "console.log(xhr, status, error);".
                    "});".
                    
                    "$('#salvar').click(function(event){".
                        "event.preventDefault();".
                        "$.ajax({".
                            "method: 'post',".
                            "url: '".URLBASE."_funcPHP/_Ajax/update.php',".
                            "dataType: 'html',".
                            "data:{".
                                "titulo: $('#titulo').val(),".
                                "desc: $('#desc').val(),".
                                "cont: $('#cont').val(),".
                                "tags: $('#tags').val(),".
                                "ids: id".
                            "}".
                        "}).done(function(){".
                            "".
                        "}).fail(function(xhr, status, error) {".
                            "console.log(xhr, status, error);".
                        "});".
                    "});".
                "});".
            "</script>";
        return $pagAdm;
    }

    public function login(){
        $login = new conteudoUser();
        $user = filter_input(INPUT_POST,"user", FILTER_SANITIZE_STRING);
        $pass = base64_encode(filter_input(INPUT_POST, "pass", FILTER_SANITIZE_STRING)); 
        if($login->verificaLogin($user,$pass)){
            $dadosUser = $login->dadosUsuario($user,$pass);
            $_SESSION['usr_logado'] = base64_encode('logado');
            $_SESSION['user'] = $user;
            $_SESSION['pass'] = $pass;
            $_SESSION['infos'] = base64_encode($dadosUser[0]['id_autor']."||".$dadosUser[0]['nome_autor']."||".$dadosUser[0]['apelido_autor']."||".$dadosUser[0]['criacao_autor']."||".$dadosUser[0]['ultimo_acesso_autor']."||".$dadosUser[0]['status_autor']);
            return $this->admin();
        }
        $pagLogin = 
            "<section id='login'>".
                "<form action='' method='post'>".
                    "<h3>Acesso restrito</h3>".
                    "<div class='clabel'>".
                        "<label for='user'>Usuario:</label>".
                        "<input type='text' name='user' id='user'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='pass'>Senha:</label>".
                        "<input type='password' name='pass' id='pass'>".
                    "</div>".
                    "<div  class='btn'>".
                        "<button id='btn-loga'>Login...</button>".
                    "</div>".
                "</form>".
            "</section>";
        return $pagLogin;
    }
}