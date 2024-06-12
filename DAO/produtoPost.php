<?php 
   
   function incluir_produto($conexao, $u){

        $sql = "INSERT INTO tbl_produtos (imagem, nome, descricao, quantidade, preco, categoria) VALUES ('$u->imagem','$u->nome', '$u->descricao', '$u->quantidade','$u->preco','$u->categoria');";
        $res = mysqli_query($conexao, $sql) or die("Erro ao tentar incluir");
        fecharConexao($conexao);
        return $res;
   };

?>

