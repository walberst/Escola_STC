<?php
class adm{
    public function admin(){
        $pagAdm = "<p>admin</p>";
        return $pagAdm;
    }

    public function login(){ 
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
                    "<div id='btn'>".
                        "<button id='btn-loga'>Login...</button>".
                    "</div>".
                "</form>".
            "</section>".
            "<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>".
            "<script>".
                "$('#btn-loga').click(function(args){".
                    "args.preventDefault();".
                    "$.ajax({".
                        "method: 'post',".
                        "dataType: 'json',".
                        "url: '".URLBASE."_funcPHP/_Ajax/logar.php',".
                        "data:{".
                            "user: $('#user').val(),".
                            "pass: $('#pass').val(),".
                        "},". 
                        "sucess: location.reload()".   
                    "})".
                "});".
            "</script>";
        return $pagLogin. var_dump($_SESSION['user']);
    }
}