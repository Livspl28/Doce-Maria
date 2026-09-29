create database doce_maria;
use doce_maria;


CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    img_produto VARCHAR(255),
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    categoria ENUM(
        'Cookies', 'Cupcakes', 'Brownies', 'Doces', 
        'Bolos', 'Alfajor', 'Brigadeiro', 'Cannoli', 
        'Donuts', 'Eclair', 'Macaron', 'Pirulitos'
    ) NOT NULL,
    peso_tamanho VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0,
    status_estoque ENUM('Em estoque', 'Estoque baixo', 'Esgotado') DEFAULT 'Em estoque',
    estrelas INT NULL CHECK (estrelas BETWEEN 0 AND 5),
    eh_pacote_buffet BOOLEAN DEFAULT FALSE 
) ENGINE=InnoDB;

INSERT INTO produtos 
(img_produto, nome_produto, descricao, categoria, peso_tamanho, preco, estoque, status_estoque, estrelas)
VALUES 
('whitepeanut.jpg', 'Donut ChocoPeanut Branco', 'Cobertura de chocolate branco com riscos de chocolate ao leite e pedaços de amendoim torrado.', 'donuts', '85g / Médio', 12.50, 25, 'Em Estoque', 4.8),
('wconfe.png', 'Donut Confeito Divertido', 'Cobertura de chocolate branco decorada com confeitos coloridos.', 'donuts', '75g / Médio', 10.00, 40, 'Em Estoque', 4.7),
('socreamy.jpg', 'Donut Creamy Berry', 'Cobertura de mirtilo/amora com calda cremosa e açúcar de confeiteiro salpicado.', 'donuts', '90g / Médio', 13.00, 15, 'Em Estoque', 4.9),
('Reve.jpg', 'Donut Red Velvet Crunch', 'Cobertura vermelha especial estilo Red Velvet com riscos brancos e esferas crocantes.', 'donuts', '85g / Médio', 14.00, 10, 'Em Estoque', 5.0),
('purwhite.png', 'Donut Purple Glaze', 'Glacê roxo vibrante finalizado com linhas delicadas de chocolate branco.', 'donuts', '70g / Médio', 11.00, 30, 'Em Estoque', 4.6),
('purpleconfetti.jpg', 'Donut Lavender Sprinkles', 'Cobertura clara tom lavanda com granulados crocantes de amoreira/frutas vermelhas.', 'donuts', '80g / Médio', 11.50, 20, 'Em Estoque', 4.5),
('ppinkconfe.jpg', 'Donut Pink Rainbow', 'Cobertura rosa clássica com granulados coloridos estilo arco-íris.', 'donuts', '80g / Médio', 10.50, 50, 'Em Estoque', 4.8),
('pinkcofe.jpg', 'Donut Pink Sugar Sprinkles', 'Cobertura rosa suave com granulados brancos e rosa em bastão.', 'donuts', '75g / Médio', 10.50, 35, 'Em Estoque', 4.7),
('peanuts.jpg', 'Donut Caramelo & Amendoim', 'Cobertura de chocolate branco, calda de caramelo e amendoim crocante.', 'donuts', '85g / Médio', 12.50, 18, 'Em Estoque', 4.9),
('oreod.jpg', 'Donut Oreo & Cream', 'Cobertura cremosa de chocolate com pedaços e biscoito Oreo inteiro.', 'donuts', '95g / Grande', 15.00, 12, 'Em Estoque', 5.0),
('mermaidd.jpg', 'Donut Mermaid Dust', 'Cobertura azul-turquesa cintilante com acabamento em brilho comestível estilo sereia.', 'donuts', '80g / Médio', 12.00, 22, 'Em Estoque', 4.8),
('velvet.jpg', 'Cupcake Red Velvet Heart', 'Massa red velvet com cobertura cremosa de cream cheese e confeitos de corações vermelhos.', 'cupcakes', '90g / Médio', 14.00, 25, 'Em Estoque', 4.9),
('raspberry.jpg', 'Cupcake Fresh Raspberry', 'Massa leve com cobertura de buttercream de framboesa e framboesas frescas no topo.', 'cupcakes', '95g / Médio', 15.50, 18, 'Em Estoque', 4.8),
('PINKCHERRY.jpg', 'Cupcake Pink Cherry Bliss', 'Massa fofinha com cobertura espiral rosa pastel, pérolas comestíveis e uma cereja no topo.', 'cupcakes', '85g / Médio', 13.50, 30, 'Em Estoque', 4.7),
('cherryred.jpg', 'Cupcake Triple Cherry Red', 'Massa red velvet com cobertura suave de chantilly e triplo topo de cerejas com calda.', 'cupcakes', '100g / Médio', 16.00, 15, 'Em Estoque', 5.0),
('oreocup.jpg', 'Cupcake Oreo Cookies & Cream', 'Massa de chocolate amargo com cobertura de buttercream de Oreo e um biscoito Oreo inteiro.', 'cupcakes', '95g / Médio', 14.50, 22, 'Em Estoque', 4.9),
('incup.jpg', 'Cupcake Mint Choco Cherry', 'Massa de chocolate com cobertura refrescante de menta, pedaços de chocolate e cereja.', 'cupcakes', '90g / Médio', 13.00, 20, 'Em Estoque', 4.6),
('classipink.jpg', 'Cupcake Pink Pearl Elegance', 'Massa de baunilha com cobertura aveludada rosa pastel e pérolas com esferas douradas.', 'cupcakes', '85g / Médio', 12.50, 28, 'Em Estoque', 4.8),
('canelacup.jpg', 'Cupcake Cinnamon Spice', 'Massa aromatizada com canela, cobertura cremosa salpicada de cacau e pau de canela decorativo.', 'cupcakes', '85g / Médio', 12.00, 24, 'Em Estoque', 4.7),
('cafe.jpg', 'Cupcake Cappuccino Crunch', 'Massa de café com chantilly mesclado, calda de chocolate e granulados crocantes.', 'cupcakes', '85g / Médio', 13.50, 26, 'Em Estoque', 4.8),
('bluee.jpg', 'Cupcake Ocean Blue Sky', 'Massa suave com cobertura espiral azul-celeste e microesferas prateadas comestíveis.', 'cupcakes', '85g / Médio', 12.50, 30, 'Em Estoque', 4.7);
