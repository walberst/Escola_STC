<?php
class categorias{
    public function pgCat($id){
        $cat = 
        "<section id='' class=''>".
            "<div class=''>".
                "<h2>".$id."</h2>".
                "<form action='' method=''>".
                    "<input type='search' placehold=''>".
                    "<input type='submit' value='Pesquisar'>".
                "</form>".
            "</div>".
            "<div class=''>".
                "<div class='container'>".
                    
                "</div>".
            "</div>".
        "</section";
        return $cat;
    }
}