<?php 
   

   function pegar_produto($conexao){

    $sql = "SELECT * FROM tbl_produtos";
    $res = mysqli_query($conexao, $sql) or die("Erro ao tentar consultar");

    $produtos = [];

    while ($registro = mysqli_fetch_array($res)) {
        $id = utf8_encode( $registro['id']);
        $imagem= utf8_encode($registro['imagem']);
        $nome = utf8_encode(  $registro['nome']);
        $descricao = utf8_encode( $registro['descricao']);
        $quantidade = utf8_encode( $registro['quantidade']);
        $preco = utf8_encode( $registro['preco']);
        $categoria = utf8_encode( $registro['categoria']);
        
        $novo_produto = new Produto($id, $imagem, $nome, $descricao, $quantidade, $preco, $categoria);
        array_push($produtos ,$novo_produto);
    };
    
    fecharConexao($conexao);
    return $produtos;
   };

   
?>