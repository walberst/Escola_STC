<?php
class contato{
    function contact(){
        $contato = 
        "<section id='contato'>".
            "<div id='form-contact' class='pgco'>".
                "<form action='' method='post'>".
                    "<h3 id='titulo'>Fale conosco</h3>".
                    "<div class='clabel'>".
                        "<label for='name'>NOME:</label>".
                        "<input id='name' type='text' name='nome'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='mail'>EMAIL:</label>".
                        "<input id='mail' type='email' name='email'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='fone'>TELEFONE:</label>".
                        "<input id='fone' type='tel' name='fone'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='ass'>ASSUNTO:</label>".
                        "<input id='ass' type='text' name='assunto'>".
                    "</div>".
                    "<div class='clabel'>".
                        "<label for='msg'>MENSAGEM:</label>".
                        "<textarea id='msg' name='msg'></textarea>".
                    "</div>".
                    "<div id='btn'>".
                        "<button id='btn-envia'>ENVIAR...</button>".
                    "</div>".
                "</form>".
            "</div>".
            "<div id='infos-contact' class='pgco'>".
                "<div class='infos'>".
                    "<h4>Redes Sociais</h4>".
                    "<span><a href='https://pt-br.facebook.com/' target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-facebook socialMedia' id='facebook'></i></a><a href='https://www.instagram.com/'  target='_blank' rel='noopener noreferrer' class='linkSocial'><i class='flaticon-instagram socialMedia' id='instagram'></i></a></span>".
                "</div>".
                "<div class='infos'>".
                    "<h4>Telefones</h4>".
                    "<span>(11) 4002-8922</span>".
                "</div>".
                "<div class='infos'>".
                    "<h4>Email</h4>".
                    "<span>contato@escolatsc.com.br</span>".
                "</div>".
                "<div class='infos'>".
                    "<h4>Endereço</h4>".
                    "<span>Rua dos bobos, 0 | São Paulo - SP</span>".
                "</div>".
                "<div class='infos'>".
                    "<h4>Horario de funcinamento</h4>".
                    "<span>Seg - Sex : 8h às 17h</span>".
                "</div>".
            "</div>".
        "</section>".
        "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>".
        "<script>".
            "$('#btn-envia').click(function(args){".
                "args.preventDefault();".
                "$.ajax({".
                    "method: 'post',".
                    "dataType: 'json',".
                    "url: '".URLBASE."_funcPHP/_Ajax/sendMail.php',".
                    "data:{".
                        "nome: $('#name').val(),".
                        "email: $('#mail').val(),".
                        "fone: $('#fone').val(),".
                        "assunto: $('#ass').val(),".
                        "msg: $('#msg').val(),".
                    "},". 
                    "sucess: function(data){".
                        "let res = JSON.parse(data);".
                        "if(res[0] == 'true'){alert('Mensagem enviada com sucesso')}".
                    "}".   
                "})".
            "});".
        "</script>";
        return $contato;
    }

}
