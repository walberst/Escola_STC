function foi(msg) {
    alert(msg);
    $('#crud').hide();
    location.reload();
}
$('#cancelar').click(function(event) {
    event.preventDefault();
    $('#crud').hide();
});

$('#inp').click(function(event) {
    event.preventDefault();
    $('#crud').show();
    $('#crud form h3').html('Inserir postagem em projetos.');
    $('#salvar').val(2);
    $('#salvar').click(function(salva) {
        var imgOk = true;
        salva.preventDefault();
        $.ajax({
            method: 'post',
            url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/inserir.php',
            data: {
                titulo: $("#titulo").val(),
                desc: $("#desc").val(),
                cont: $("#cont").val(),
                tags: $("#tags").val(),
                img: imgOk,
                categ: $("#salvar").val()
            },
            beforeSend: function() {
                var fd = new FormData();
                var files = $('#file')[0].files[0];
                fd.append('file', files);

                $.ajax({
                    url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/inserirImg.php',
                    type: 'post',
                    data: fd,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        if (response != 0) {
                            imgOk = true;
                        } else {
                            alert('Imagem não enviada');
                        }
                    }
                });
            },
        }).done(
            function(response) {
                if (response == 1) {
                    alert(response);
                } else {
                    foi("Projeto inserido com sucesso;");
                }
            }
        ).fail(function(xhr, status, error) {
            console.log(xhr, status, error);
        });
    });
});

$('#inn').click(function(event) {
    event.preventDefault();
    $('#crud').show();
    $('#crud form h3').html('Inserir postagem em notícias.');
    $('#salvar').val(1);
    $('#salvar').click(function(salva) {
        var imgOk = true;
        salva.preventDefault();
        $.ajax({
            method: 'post',
            url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/inserir.php',
            data: {
                titulo: $("#titulo").val(),
                desc: $("#desc").val(),
                cont: $("#cont").val(),
                tags: $("#tags").val(),
                img: imgOk,
                categ: $("#salvar").val()
            },
            beforeSend: function() {
                var fd = new FormData();
                var files = $('#file')[0].files[0];
                fd.append('file', files);

                $.ajax({
                    url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/inserirImg.php',
                    type: 'post',
                    data: fd,
                    contentType: false,
                    processData: false,
                    success: function(response) {
                        if (response != 0) {
                            imgOk = true;
                        } else {
                            alert('Imagem não enviada');
                        }
                    }
                });
            },
        }).done(
            function(response) {
                if (response == 1) {
                    alert(response);
                } else {
                    foi("Notícia inserida com sucesso;");
                }
            }
        ).fail(function(xhr, status, error) {
            console.log(xhr, status, error);
        });
    });
});



$('.excluir').click(function(ex) {
    ex.preventDefault();
    if (confirm("Deseja realmente excluir esta publicação?")) {
        $.ajax({
            method: 'post',
            url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/excluir.php',
            data: {
                excluir: $(this).val()
            }
        }).done(foi('Postagem excluida com sucesso'));
    }
});

let id = '';
$('.alterar').click(function(al) {
    id = $(this).val();
    $('#salvar').val($(this).val());
    al.preventDefault();
    $('#crud').show();
    $.ajax({
        method: 'post',
        dataType: 'json',
        url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/alterar.php',
        data: { id: $(this).val() },
    }).done(function(dado) {
        $('#titulo').val(dado[0]['titulo_postagens']);
        $('#desc').val(dado[0]['desc_postagens']);
        $('#cont').val(dado[0]['conteudo_postagens']);
        $('#tags').val(dado[0]['tags_postagens']);
    }).fail(function(xhr, status, error) {
        console.log(xhr, status, error);
    });

    $('#salvar').click(function(event) {
        event.preventDefault();
        $.ajax({
            method: 'post',
            url: 'http://localhost/Escola_STC/_funcPHP/_Ajax/update.php',
            dataType: 'html',
            data: {
                titulo: $('#titulo').val(),
                desc: $('#desc').val(),
                cont: $('#cont').val(),
                tags: $('#tags').val(),
                ids: id
            }
        }).done(function() {

        }).fail(function(xhr, status, error) {
            console.log(xhr, status, error);
        });
    });
});