<?php 
   
   function editar_produto($conexao, $u, $id){

        $sql = "UPDATE tbl_produtos SET imagem = '$u->imagem', nome = '$u->nome', descricao = '$u->descricao', quantidade = '$u->quantidade', preco='$u->preco', categoria = '$u->categoria' WHERE id = $id;";
        $res = mysqli_query($conexao, $sql) or die("Erro ao tentar incluir");
        fecharConexao($conexao);
        return $res;
   };

?>