INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Alex', 'Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Maria', 'Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_OPERATOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_category (name) VALUES ('Epis');
INSERT INTO tb_category (name) VALUES ('Ferramentas elétricas');
INSERT INTO tb_category (name) VALUES ('Ferramentas manuais');
INSERT INTO tb_category (name) VALUES ('Ferramentas a bateria');
INSERT INTO tb_category (name) VALUES ('Solda e abrasivos');
INSERT INTO tb_category (name) VALUES ('Elevação e movimentação');



INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Botina bico PVC Nº38','Botina de Segurança com elastico bico pvc Solado Bidensidade Nº38', 65.99, 59.99, '63.99 em 1x', 'https://user-images.githubusercontent.com/91570669/171781213-9f89350e-45ec-46dd-8329-91efe2315dbd.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Jogo Soquetes Estriado 8 a 32 mm','O Jogo de Soquetes Estriado 8 a 32 mm Encaixe 1/2" com 22 Peças - Robust foi feito em aço cromo-vanádio proporcionando durabilidade e resistência e cabo metálico com perfil recartilhado oferecendo firmeza e ergonomia.
', 383.70, 255.60, 'R$269,05 em até 5x', 'https://user-images.githubusercontent.com/91570669/171783595-50110020-e1d1-4cd4-b43c-a1c6c420b1b1.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Bolsa Ferramentas Robust','A Bolsa para Ferramentas 16" 41 cm - Robust é prática e resistente. Possui zíper robusto e reforço metálico na parte superior da bolsa. Além disso, conta com espaço interno de até 25 litros e capacidade de carga de até 30 quilos. É o produto perfeito para você armazenar seu kit de ferramentas que vai te salvar no dia a dia.
', 112.70, 94.60, 'R$98,05 em até 2x', 'https://user-images.githubusercontent.com/91570669/172152796-83d862ad-25c0-464c-b82c-ace2c830f633.png');

INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Esmerilhadeira 4" Bosch','A Esmerilhadeira Angular 4.1/2" 850 Watts 127V GWS 850 - Bosch é segura, potente e com alta resistência à sobrecarga. Possui empunhadura que garante ao operador conforto e proteção, além de contar com um rolamento altamente resistente e durável. Dispõe de duas camadas de material isolante entorno das partes sob tensão ou isolamento e não requer uma conexão ao aterramento elétrico. Equipamento indicado para corte, desbaste, lixamento, acabamento e remoção de material em metais. Tenha um equipamento de qualidade Bosch para seus serviços.
', 412.99, 391.00, '10 x R$39,10', 'https://user-images.githubusercontent.com/91570669/172152799-34ffec7f-8057-4028-a0f8-7a0829aad477.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Esmerilhadeira 7" Makita','A Esmerilhadeira Angular 7" 2200 Watts 220V GA7020 - Makita é robusta e é feita para trabalhos diversos com potência e ergonomia. Com motor de alta potência e caixa de engrenagem reforçada, a máquina possui vida útil prolongada e resistência em utilizações pesadas. Possui diversas posições para instalação da empunhadura lateral e vêm completa em sua caixa, pronta para o trabalho. Indicada para o corte e desbaste de materiais metálicos como o aço, e muito adequado para o corte de alvenaria e concreto. Para cada tipo de aplicação, existe um acessório ideal, não esqueça de equipar corretamente seu equipamento. É a ferramenta ideal para seu trabalho sério!
', 700.00, 665.56, '10 x R$63,00', 'https://user-images.githubusercontent.com/91570669/172152800-1aa39ef2-f39a-4cd7-ae5a-48e9e8dcc920.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Esmerilhadeira 4" Dewalt','A Esmerilhadeira Angular 4.1/2" 800 Watts 220V DWE4020 - Dewalt tem o melhor custo benefício da categoria. Esta máquina oferece maior vida útil devido a entrada de ar que melhora o resfriamento do motor e também escovas de carvão mais duráveis. Devido ao tamanho da empunhadura que é adequado para a palma da mão, dispõe de fácil controle manual e boa ergonomia. Este equipamento é indicado para corte, desbaste, lixamento, acabamento e remoção de material em metais. Tenha um equipamento de alta durabilidade para seus serviços.
', 451.00, 429.00, '10 x R$42,90', 'https://user-images.githubusercontent.com/91570669/172152801-c7a4012d-3224-4e9c-9000-38a264a471ce.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Furadeira Impacto Bosch','A Furadeira Impacto 1/2" 750 Watts 220V GSB 16 RE - Bosch possui potência para os trabalhos mais exigentes e sua carcaça robusta garante maior durabilidade e vida útil da ferramenta. Possui regulagem eletrônica, velocidade variável e é reversível, podendo ser também utilizada como parafusadeira, sendo uma inovação da Bosch. Dispõe de engrenagens de alto torque, o que proporciona mais rapidez nas perfurações para suprir as necessidades de profissionais versáteis. Indicada para perfurações em concreto, alvenaria, madeira e metal. É a ferramenta ideal para seu trabalho sério!
', 540.00, 513.00, '10 x R$51,30', 'https://user-images.githubusercontent.com/91570669/172152803-8525ac11-c2b1-46c7-bdf5-d02a7c34e6cd.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Martelete Bosch','O Martelete Perfurador / Rompedor 820 Watts 2,7 Joules 220V GBH 2-24 D - Bosch possui muito mais produtividade nas perfurações e rompimentos. Esta máquina conta com ausência de bloqueios abruptos por meio do destravamento das garras da embreagem e da minimização do torque, além de embreagem de segurança para maior proteção do usuário. Também, possui punho emborrachado para melhor agarre e aplicação, e cabo giratório de 4 metros, evitando rompimento prematuro. Este equipamento é indicado para furos em alvenaria, concreto, madeira e trabalhos de pequenas demolições. É a ferramenta ideal para serviços de qualidade!
', 975.30, 926.54, '10 x R$94.80', 'https://user-images.githubusercontent.com/91570669/172152803-8525ac11-c2b1-46c7-bdf5-d02a7c34e6cd.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Martelo Rompedor Dewalt','A máquina Martelete Perfurador / Rompedor 800 Watts 26 Joules D25133K - Dewalt possui maior potência para perfurar com menos esforço. Possui função perfurador com impacto e sem impacto e rompedor. Equipamento indicado para furar, romper e demolir os materiais encontrados em obras, como retirar um revestimento na parede, e locais com alvenaria. É a ferramenta ideal para serviços de qualidade!
', 862.64, 812.00, '10 x R$81,20', 'https://user-images.githubusercontent.com/91570669/172152806-e5c13d1f-087c-4848-b8ab-ba153b54acfc.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Martelo Rompedor Makita','O Martelo Demolidor SDS Max 1510 Watts 25,5 Joules HM1203C 220V- Makita é mais leve, rápido e confiável para aplicações horizontais. Conta com dupla isolação, velocidade variável e reversível, controle eletrônico de velocidade para produtividade em rompimentos contínuos e partida suave, além de ter encaixe SDS MAX para fácil troca do ponteiro. É a ferramenta ideal para perfuração e rompimento em concreto usinado, alvenaria e remoções de revestimento em paredes. Confie na qualidade das ferramentas japonesas.
', 4121.00, 3914.96, '10 x R$412,10', 'https://user-images.githubusercontent.com/91570669/172152807-bf4f39b0-3e6c-4144-bcb5-a2e5316eb7af.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Serra Marmore Bosch','A Serra Mármore 125 mm 1500 Watts 220V GDC 150 TITAN - Bosch é a única ferramenta do mercado que alcança espaços que as outras não alcançam. Além de ser leve e compacta, possui placa-base de fácil ajuste e remoção, alto torque e maior velocidade nas diversas aplicações. Dispõe de interruptor de gatilho com trava de segurança contra acionamento acidental. É indicada para fazer cortes em ardósia, mármore, materiais cerâmicos, concreto e material refratário. O equipamento também tem capacidade para cortar ferragem dentro da pedra, caso exista. É a máquina ideal para quem está buscando o melhor produto da categoria.
', 449.46, 426.13, '10 x R$43,00', 'https://user-images.githubusercontent.com/91570669/172152809-4db58c3d-e158-4aef-b44d-a7f272653e39.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Serra Tico tico Dewalt','A Serra Tico-Tico 650 Watts 220V DWE300-B2 - Dewalt é apropriada para hobby e uso profissinal. Se trata de uma máquina muito utilizada em projetos de artesanato e marcenaria, carpintaria, departamentos de manutenção e trabalhos acrílicos. Indicada para cortes retos e curvos em madeiras, metais e plásticos. Seu serviço precisa da qualidade desta ferramenta.
', 577.90, 549.13, '10 x R$56,90', 'https://user-images.githubusercontent.com/91570669/172152812-8ec20211-c1a2-4309-a387-2e7464aaa94a.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Carrinho de mao Tramontina','Os carrinhos de mão Tramontina são fabricados através de processos altamente tecnológicos que garantem alta resistência excelente qualidade e bom acabamento aos produtos.
', 456.00, 433.12, '10 x R$43,31', 'https://user-images.githubusercontent.com/91570669/172157562-14373bd2-2c86-4db5-92d5-d1608768bfd5.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Combo Parafuseira Bosch Litio','Parafusadeira de impacto sem fio GDX 180 LI Bosch é a única chave de impacto de mercado com porta-bits duplo: as tarefas de parafusamento e perfuração com a mesma ferramenta.
', 1731.00, 1623.66, '10 x R$162,36', 'https://user-images.githubusercontent.com/91570669/172157567-2afe2001-f2df-453e-a23f-c9f0c02fdfc8.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Eletrodo ESAB 2,50mm 18kg','Classificação: E6013, Homologações ABS BV DNV e LR, Uso geral todos os tipos de juntas em todas as posições produzindo cordões de excelente acabamento, Soldagem de chapas navais estruturas metálicas construções em geral, Bom desempenho em chapas galvanizadas sem preparação e ponteamento.
', 1414.40, 1343.70, '10 x R$138.83', 'https://user-images.githubusercontent.com/91570669/172157568-332d77c4-b6de-449f-9af6-dfb9a3b81cab.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Inversora de Solda LHN242i ESAB','A nova Inversora de Solda 200 Amperes para Eletrodo Revestido e Tig - LHN 242i Esab está pronta para qualquer trabalho seja em campo na oficina ou fábrica e assim como todos os equipamentos ESAB segue rigorosos padrões de qualidade e normas globais.
', 2690.00, 2555.50, '10 x R$260.00', 'https://user-images.githubusercontent.com/91570669/172157570-3b90c17f-80de-4237-be92-989c4877faf2.png');
INSERT INTO tb_product (name, description, full_price, promo_price, finance_price, img_url) VALUES ('Luva Tricotada Laranja com pigmento','A Luva Tricotada Laranja Tamanho GG - Volk tricotada em fios de algodão revestida em látex natural borracha vulcanizada antiderrapante na palma face palmar e ponta dos dedos acabamento rugoso punho tricotado com elastano.
', 9.44, 9.02, 'ate 1x 9.02', 'https://user-images.githubusercontent.com/91570669/172157572-f0532e6a-f149-49dc-b84d-c214330b3aec.png');



INSERT INTO tb_product_category (product_id, category_id) VALUES (1, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (2, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (3, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (4, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (5, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (6, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (7, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (8, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (9, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (10, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (11, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (12, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (13, 6);
INSERT INTO tb_product_category (product_id, category_id) VALUES (14, 4);
INSERT INTO tb_product_category (product_id, category_id) VALUES (15, 5);
INSERT INTO tb_product_category (product_id, category_id) VALUES (16, 5);
INSERT INTO tb_product_category (product_id, category_id) VALUES (17, 1);


