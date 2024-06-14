CREATE DATABASE db_assai;
USE db_assai;
DROP TABLE Assai;
CREATE TABLE tbl_produtos(
id INT AUTO_INCREMENT PRIMARY KEY,
	imagem VARCHAR(255),
    nome VARCHAR(255),
    descricao TEXT,
    quantidade INT,
    preco DECIMAL(10, 2),
    categoria TEXT
);
 
INSERT INTO tbl_produtos (id, imagem, nome , descricao, quantidade, preco, categoria) VALUES 
('01', 'https://paulistaoatacadista.vtexassets.com/arquivos/ids/319038/PaoKimBisnaguinha300g1.jpg?v=638103420249100000', 'Bisnaguinhas Kim', 'Macios, com textura e sabor inigualáveis, além de levar o máximo sabor ao seu dia a dia!', 20, 14.99, 'alimenticio'),
('02', 'https://savegnagoio.vtexassets.com/arquivos/ids/380248/PaoKimHotDog500g1.jpg?v=638103419058300000', 'Pão HotDog Kim', 'Esse pão entrega a maciez e o sabor desejados em lanches incríveis para você aproveitar.', 14, 8.50, 'alimenticio'),
('03', 'https://plataforma.supersimple.com.ar/Panelcontenidos/Contenidos/Doritos-sabor-queso-x-230-grs-1621262599-0-2.jpg', 'Doritos', 'A tortilha chips número #1 do mundo. Para aqueles que buscam sempre desafiar a lógica do senso comum.', 27, 11.90, 'alimenticio'),
('04', 'https://mambodelivery.vtexassets.com/arquivos/ids/180482-800-auto?v=637883941225400000&width=800&height=auto&aspect=true', 'Fandangos', 'É simples e acredita que podemos criar um milhão de momentos divertidos e gostosos em família!', 19, 28.90, 'alimenticio'),
('05', 'https://static.clubeextra.com.br/img/uploads/1/609/24376609.jpg', 'Salsicha Aurora', 'No Hot Dog ou na refeição, a salsicha Aurora fica ótima. Prática e saborosa!', 12, 24.90, 'frios'),
('06', 'https://coopsp.vtexassets.com/arquivos/ids/235040-800-auto?v=638351566185630000&width=800&height=auto&aspect=true', 'Linguiça Toscana', 'Seja para comer frita nas refeições ou assada em um churrasco em família, aessa linguiça é deliciosa.', 26, 27.99, 'frios'),
('07', 'https://www.auroraalimentos.com.br/wp-content/uploads/2022/04/FILEZINHO-EMPANADO-GRANEL-3KG-11353_comprimido-1024x1024.png', 'Filézinho Aurora', 'Conta com uma casquinha crocante, sequinha mas muito suculento por dentro. Um produto 100% carne de frango.', 9, 29.99, 'frios'),
('08', 'https://statics.angeloni.com.br/super/files/produtos/1291548/1291548_1_zoom.jpg', 'Nuggets Sadia', 'Elaborado com carne selecionada de frango, temperada, empanada, pré-frita, cozida e congelada!', 32, 13.99, 'frios'),
('09', 'https://arquivosbrasil.blob.core.windows.net/insulas/imagem/amaciante-ype-aconchego-azul-caixa-c-6x2-ean-7896098902400-5280106.png', 'Amaciante Ypê', 'O amaciante ypê tradicional aconchego 2L proporciona um perfume agradável nas roupas por muito mais tempo.', 29, 19.99, 'limpeza'),
('10', 'https://s3.amazonaws.com/images.ecwid.com/images/9684134/1351081713.jpg', 'Detergente Ypê', 'Sua composição possui tensoativos biodegradáveis, com alto poder de limpeza, na medida certa para remoções.', 18, 3.49, 'limpeza'),
('11', 'https://static.paodeacucar.com/img/uploads/1/536/22316536.jpg', 'Sabão em Pó Tixan', 'O sabão em pó Tixan é a solução para deixar suas roupas livres de manchas e com um perfume incrível.', 10, 27.37, 'limpeza'),
('12', 'https://a-static.mlcdn.com.br/1500x1500/desinfetante-ype-bak-41534-eucalipto-5l/magazineluiza/225596300/fd895dcfdd0f73320d9c7789dd41b013.jpg', 'Desifetante Ypê', 'Casa limpa e protegida de bactérias e fungos não é fácil, né? Ele elimina 99,9% das bactérias e fungos.', 36, 35.99, 'limpeza');
 
-- GET
    SELECT * FROM tbl_produtos;
    -- POST
    INSERT INTO tbl_produtos (id, imagem, nome, descricao, quantidade, preco, categoria) VALUES
    ('13', 'https://m.media-amazon.com/images/I/61nXhA+LiAL._AC_UF1000,1000_QL80_.jpg', 'Bolinho duplo chocolate', 'Delicioso','10','4.99', 'alimenticio');
    -- PUT
    UPDATE tbl_produtos
    SET imagem = 'https://www.perdigao.com.br/assets/_images/234245a2d86f6325a0c528079543eb8979ce9144.png', nome = 'Mortadela perdigao', descricao = 'Bom', quantidade = '15', preco = '39.99', categoria = 'frios'
    where id = 14;
    -- DELETE
    DELETE FROM tbl_produtos
    WHERE id = 14;
    ALTER TABLE tbl_produtos convert to character set utf8mb4 collate utf8mb4_general_ci;