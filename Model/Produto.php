<?php 

    class Produto{
        public $id;
        public $imagem;
        public $nome;
        public $descricao;
        public $quantidade;
        public $preco;
        public $categoria;

        function __construct($id_informado, $imagem_informada, $nome_informado, $descricao_informada, $quantidade_informada, $preco_informado, $categoria_informada){
            $this->id = $id_informado;
            $this->imagem = $imagem_informada;
            $this->nome = $nome_informado;
            $this->descricao = $descricao_informada;
            $this->quantidade = $quantidade_informada;
            $this->preco = $preco_informado;
            $this->categoria = $categoria_informada;
        }

        
    }
?>
