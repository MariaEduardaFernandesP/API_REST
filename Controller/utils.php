<?php 
         function criarResposta($status, $msg){
            $resp = new Resposta($status, $msg);
     
            return $resp;
         }
    
         function receberDados(){
            $dados = json_decode(file_get_contents('php://input'));
            
            $imagem = $dados->imagem;
            $nome = $dados->nome;
            $descricao = $dados->descricao;
            $quantidade = $dados->quantidade;
            $preco = $dados->preco;
            $categoria = $dados->categoria;
    
            $prod = new Produto("",$imagem, $nome, $descricao, $quantidade, $preco, $categoria);
            return $prod;
        }
?>