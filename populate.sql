----------------------------------------
-- Populate Relations
----------------------------------------

insert into categoria values ('Refrigerantes');       --super_categoria
insert into categoria values ('Coca-Cola');           --sub (simples)
insert into categoria values ('Ice Tea');             --sub (simples)
insert into categoria values ('Sprite');              --sub (simples)
insert into categoria values ('Bebidas Alcoolicas');  --super_categoria
insert into categoria values ('Vinho');               --sub (simples)
insert into categoria values ('Cerveja');             --sub (simples)
insert into categoria values ('Vodka');               --sub (simples)
insert into categoria values ('Whisky');              --sub (simples)
insert into categoria values ('Rum');                 --sub (simples)
insert into categoria values ('Agua');                --simples
insert into categoria values ('Leite');               --simples
insert into categoria values ('Comidas');             --super_categoria
insert into categoria values ('Peixe');               --sub (super)
insert into categoria values ('Congelado');           --sub (simples)
insert into categoria values ('Fresco');              --sub (simples)
insert into categoria values ('Carne');               --sub (super)
insert into categoria values ('Talho');               --sub (simples)
insert into categoria values ('Empacotada');          --sub (simples)
insert into categoria values ('Gomas');               --simples
insert into categoria values ('Sal');                 --simples
insert into categoria values ('Guardanapos');         --simples
insert into categoria values ('Cereais');             --simples
insert into categoria values ('Chocolates');          --simples
insert into categoria values ('Iogurtes');            --simples
insert into categoria values ('Pasta de Dentes');     --simples
insert into categoria values ('Escovas de Dentes');   --simples
insert into categoria values ('Outros');              --simples


insert into categoria_simples values ('Coca-Cola');
insert into categoria_simples values ('Ice Tea');
insert into categoria_simples values ('Sprite');
insert into categoria_simples values ('Vinho');
insert into categoria_simples values ('Cerveja');
insert into categoria_simples values ('Vodka');
insert into categoria_simples values ('Whisky');
insert into categoria_simples values ('Rum');
insert into categoria_simples values ('Congelado');
insert into categoria_simples values ('Fresco');
insert into categoria_simples values ('Talho');
insert into categoria_simples values ('Empacotada');
insert into categoria_simples values ('Gomas');
insert into categoria_simples values ('Sal');
insert into categoria_simples values ('Guardanapos');
insert into categoria_simples values ('Cereais');
insert into categoria_simples values ('Chocolates');
insert into categoria_simples values ('Iogurtes');
insert into categoria_simples values ('Pasta de Dentes');
insert into categoria_simples values ('Escovas de Dentes');
insert into categoria_simples values ('Agua');
insert into categoria_simples values ('Leite');
insert into categoria_simples values ('Outros');

insert into super_categoria values ('Refrigerantes');
insert into super_categoria values ('Bebidas Alcoolicas');
insert into super_categoria values ('Comidas');
insert into super_categoria values ('Carne');
insert into super_categoria values ('Peixe');

insert into constituida values ('Refrigerantes', 'Coca-Cola');    --super_categoria, sub
insert into constituida values ('Refrigerantes', 'Ice Tea');
insert into constituida values ('Refrigerantes', 'Sprite');
insert into constituida values ('Bebidas Alcoolicas', 'Vinho');
insert into constituida values ('Bebidas Alcoolicas', 'Cerveja');
insert into constituida values ('Bebidas Alcoolicas', 'Vodka');
insert into constituida values ('Bebidas Alcoolicas', 'Whisky');
insert into constituida values ('Bebidas Alcoolicas', 'Rum');
insert into constituida values ('Comidas', 'Peixe');
insert into constituida values ('Peixe', 'Congelado');
insert into constituida values ('Peixe', 'Fresco');
insert into constituida values ('Comidas', 'Carne');
insert into constituida values ('Carne', 'Empacotada');
insert into constituida values ('Carne', 'Talho');

insert into fornecedor values ('123456790', 'Forn_10');      --nif, nome
insert into fornecedor values ('123456789', 'Forn_9');
insert into fornecedor values ('123456788', 'Forn_8');
insert into fornecedor values ('123456787', 'Forn_7');
insert into fornecedor values ('123456786', 'Forn_6');
insert into fornecedor values ('123456785', 'Forn_5');
insert into fornecedor values ('123456784', 'Forn_4');
insert into fornecedor values ('123456783', 'Forn_3');
insert into fornecedor values ('123456782', 'Forn_2');
insert into fornecedor values ('123456781', 'Forn_1');
insert into fornecedor values ('123456780', 'Forn_0');

insert into produto values ('1234567891011', 'cola pleb', '2017-11-22', 'Coca-Cola', '123456790');            --ean, design, data, nome categoria, fornecedorP_nif
insert into produto values ('1234567891012', 'Coca-Cola OG', '2017-11-22', 'Coca-Cola', '123456789');
insert into produto values ('1234567891013', 'Ice Tea Pessego', '2017-11-22', 'Ice Tea', '123456790');
insert into produto values ('1234567891014', 'Ice Tea Limao', '2017-11-22', 'Ice Tea', '123456789');
insert into produto values ('1234567891015', 'sprite pleb', '2017-11-22', 'Sprite', '123456790');
insert into produto values ('1234567891016', 'Sprite', '2017-11-22', 'Sprite', '123456789');
insert into produto values ('1234567891017', 'Casal Garcia', '2017-11-22', 'Vinho', '123456790');
insert into produto values ('1234567891018', 'Vinho do Porto', '2017-11-22', 'Vinho', '123456788');
insert into produto values ('1234567891019', 'Cerveja Sagres 1L', '2017-11-22', 'Cerveja', '123456790');
insert into produto values ('1234567891111', 'Cerveja SuperBock 1L', '2017-11-22', 'Cerveja', '123456788');
insert into produto values ('1234567891112', 'Cerveja SuperBock Grade', '2017-11-22', 'Cerveja', '123456788');
insert into produto values ('1234567891113', 'Eristoff Branca', '2017-11-22', 'Vodka', '123456790');
insert into produto values ('1234567891114', 'Eristoff Preta', '2017-11-22', 'Vodka', '123456788');
insert into produto values ('1234567891115', 'Jack Daniels', '2017-11-22', 'Whisky', '123456790');
insert into produto values ('1234567891116', 'Captain Morgan', '2017-11-22', 'Rum', '123456790');
insert into produto values ('1234567891117', 'Bacardi', '2017-11-22', 'Rum', '123456788');
insert into produto values ('1234567891118', 'Garrafao Luso', '2017-11-22', 'Agua', '123456790');
insert into produto values ('1234567891119', 'Serra da Estrela 330mil', '2017-11-22', 'Agua', '123456787');
insert into produto values ('1234567891211', 'Leite Mimosa Pack 6 1L', '2017-11-22', 'Leite', '123456790');
insert into produto values ('1234567891212', 'Matinal Magro 1L', '2017-11-22', 'Leite', '123456786');
insert into produto values ('1234567891213', 'Dourada do Mar', '2017-11-22', 'Fresco', '123456790');
insert into produto values ('1234567891214', 'Sardinhas', '2017-11-22', 'Fresco', '123456785');
insert into produto values ('1234567891215', 'Salmao Congelado', '2017-11-22', 'Congelado', '123456790');
insert into produto values ('1234567891216', 'Douradinhos Congelados', '2017-11-22', 'Congelado', '123456785');
insert into produto values ('1234567891217', 'Peito de Frango', '2017-11-22', 'Talho', '123456790');
insert into produto values ('1234567891218', 'Borrego', '2017-11-22', 'Talho', '123456784');
insert into produto values ('1234567891219', 'Costeletas de Porco', '2017-11-22', 'Talho', '123456784');
insert into produto values ('1234567891311', 'Hamburguer de Vaca', '2017-11-22', 'Empacotada', '123456790');
insert into produto values ('1234567891312', 'Carne Picada', '2017-11-22', 'Empacotada', '123456784');
insert into produto values ('1234567891313', 'Ursinhos', '2017-11-22', 'Gomas', '123456790');
insert into produto values ('1234567891314', 'Tubaroes', '2017-11-22', 'Gomas', '123456783');
insert into produto values ('1234567891315', 'Ovos Estrelados', '2017-11-22', 'Gomas', '123456783');
insert into produto values ('1234567891316', 'Sal Fino', '2017-11-22', 'Sal', '123456790');
insert into produto values ('1234567891317', 'Guardanapos plus Renova', '2017-11-22', 'Guardanapos', '123456790');
insert into produto values ('1234567891318', 'Special K integral', '2017-11-22', 'Cereais', '123456790');
insert into produto values ('1234567891319', 'Estrelitas', '2017-11-22', 'Cereais', '123456782');
insert into produto values ('1234567891411', 'Cornflakes', '2017-11-22', 'Cereais', '123456782');
insert into produto values ('1234567891412', 'Milka de Leite', '2017-11-22', 'Chocolates', '123456790');
insert into produto values ('1234567891413', 'Toblerone', '2017-11-22', 'Chocolates', '123456782');
insert into produto values ('1234567891414', 'Mars', '2017-11-22', 'Chocolates', '123456782');
insert into produto values ('1234567891415', 'Iogurte Grego Natural', '2017-11-22', 'Iogurtes', '123456790');
insert into produto values ('1234567891416', 'Iogurte Grego Acucarado', '2017-11-22', 'Iogurtes', '123456781');
insert into produto values ('1234567891417', 'Actimel', '2017-11-22', 'Iogurtes', '123456780');
insert into produto values ('1234567891418', 'Trident de Morango', '2017-11-22', 'Pasta de Dentes', '123456790');
insert into produto values ('1234567891419', 'Colgate Sensitive Pro-Activo', '2017-11-22', 'Pasta de Dentes', '123456780');
insert into produto values ('1234567891511', 'Escova Electrica', '2017-11-22', 'Escovas de Dentes', '123456790');
insert into produto values ('1234567891512', 'Escova Simples', '2017-11-22', 'Escovas de Dentes', '123456780');
insert into produto values ('1234567891513', 'Pack 5 Escovas Simples', '2017-11-22', 'Escovas de Dentes', '123456780');
insert into produto values ('1234567891999', 'Lays', '2017-11-22', 'Comidas', '123456780');

insert into fornecedor_sec values ('123456780', '1234567891011');     -- nif, ean
insert into fornecedor_sec values ('123456781', '1234567891011');
insert into fornecedor_sec values ('123456782', '1234567891011');
insert into fornecedor_sec values ('123456783', '1234567891011');
insert into fornecedor_sec values ('123456784', '1234567891011');
insert into fornecedor_sec values ('123456785', '1234567891011');
insert into fornecedor_sec values ('123456786', '1234567891011');
insert into fornecedor_sec values ('123456787', '1234567891011');
insert into fornecedor_sec values ('123456788', '1234567891011');
insert into fornecedor_sec values ('123456789', '1234567891011');
insert into fornecedor_sec values ('123456790', '1234567891011');
insert into fornecedor_sec values ('123456780', '1234567891012');
insert into fornecedor_sec values ('123456780', '1234567891013');
insert into fornecedor_sec values ('123456780', '1234567891014');
insert into fornecedor_sec values ('123456780', '1234567891015');
insert into fornecedor_sec values ('123456780', '1234567891016');
insert into fornecedor_sec values ('123456781', '1234567891017');
insert into fornecedor_sec values ('123456781', '1234567891018');
insert into fornecedor_sec values ('123456781', '1234567891019');
insert into fornecedor_sec values ('123456781', '1234567891111');
insert into fornecedor_sec values ('123456781', '1234567891112');
insert into fornecedor_sec values ('123456781', '1234567891113');
insert into fornecedor_sec values ('123456781', '1234567891114');
insert into fornecedor_sec values ('123456781', '1234567891115');
insert into fornecedor_sec values ('123456781', '1234567891116');
insert into fornecedor_sec values ('123456781', '1234567891117');
insert into fornecedor_sec values ('123456782', '1234567891118');
insert into fornecedor_sec values ('123456782', '1234567891119');
insert into fornecedor_sec values ('123456783', '1234567891211');
insert into fornecedor_sec values ('123456783', '1234567891212');
insert into fornecedor_sec values ('123456784', '1234567891213');
insert into fornecedor_sec values ('123456784', '1234567891214');
insert into fornecedor_sec values ('123456784', '1234567891215');
insert into fornecedor_sec values ('123456784', '1234567891216');
insert into fornecedor_sec values ('123456785', '1234567891217');
insert into fornecedor_sec values ('123456785', '1234567891218');
insert into fornecedor_sec values ('123456785', '1234567891219');
insert into fornecedor_sec values ('123456785', '1234567891311');
insert into fornecedor_sec values ('123456785', '1234567891312');
insert into fornecedor_sec values ('123456786', '1234567891313');
insert into fornecedor_sec values ('123456786', '1234567891314');
insert into fornecedor_sec values ('123456786', '1234567891315');
insert into fornecedor_sec values ('123456786', '1234567891316');
insert into fornecedor_sec values ('123456786', '1234567891317');
insert into fornecedor_sec values ('123456787', '1234567891318');
insert into fornecedor_sec values ('123456787', '1234567891319');
insert into fornecedor_sec values ('123456787', '1234567891411');
insert into fornecedor_sec values ('123456787', '1234567891412');
insert into fornecedor_sec values ('123456787', '1234567891413');
insert into fornecedor_sec values ('123456787', '1234567891414');
insert into fornecedor_sec values ('123456788', '1234567891415');
insert into fornecedor_sec values ('123456788', '1234567891416');
insert into fornecedor_sec values ('123456789', '1234567891417');
insert into fornecedor_sec values ('123456789', '1234567891418');
insert into fornecedor_sec values ('123456789', '1234567891419');
insert into fornecedor_sec values ('123456789', '1234567891511');
insert into fornecedor_sec values ('123456789', '1234567891512');
insert into fornecedor_sec values ('123456789', '1234567891513');

insert into corredor values (1, 20);         -- nro_corredor, largura
insert into corredor values (2, 15);
insert into corredor values (3, 10);

insert into prateleira values (1, 'esquerdo', 'chao');       -- nro_corredor, lado, altura
insert into prateleira values (1, 'esquerdo', 'medio');
insert into prateleira values (1, 'esquerdo', 'superior');
insert into prateleira values (1, 'direito', 'chao');
insert into prateleira values (1, 'direito', 'medio');
insert into prateleira values (1, 'direito', 'superior');
insert into prateleira values (2, 'esquerdo', 'chao');
insert into prateleira values (2, 'esquerdo', 'medio');
insert into prateleira values (2, 'esquerdo', 'superior');
insert into prateleira values (2, 'direito', 'chao');
insert into prateleira values (2, 'direito', 'medio');
insert into prateleira values (2, 'direito', 'superior');
insert into prateleira values (3, 'esquerdo', 'chao');
insert into prateleira values (3, 'esquerdo', 'medio');
insert into prateleira values (3, 'esquerdo', 'superior');
insert into prateleira values (3, 'direito', 'chao');
insert into prateleira values (3, 'direito', 'medio');
insert into prateleira values (3, 'direito', 'superior');

insert into planograma values ('1234567891111', 1, 'esquerdo', 'chao', 3, 20, 1);        -- ean, nro_corredor, lado, altura, numero de frentes de produtos visiveis, unidades_max, localizaçao
insert into planograma values ('1234567891111', 2, 'esquerdo', 'chao', 3, 20, 2);
insert into planograma values ('1234567891112', 1, 'esquerdo', 'chao', 3, 20, 3);
insert into planograma values ('1234567891113', 1, 'esquerdo', 'chao', 3, 20, 4);
insert into planograma values ('1234567891114', 1, 'esquerdo', 'medio', 3, 20, 1);
insert into planograma values ('1234567891115', 1, 'esquerdo', 'medio', 3, 20, 2);
insert into planograma values ('1234567891116', 1, 'esquerdo', 'medio', 3, 20, 3);
insert into planograma values ('1234567891117', 1, 'esquerdo', 'superior', 2, 20, 1);
insert into planograma values ('1234567891118', 1, 'esquerdo', 'superior', 2, 20, 2);
insert into planograma values ('1234567891119', 1, 'direito', 'chao', 3, 20, 1);
insert into planograma values ('1234567891211', 1, 'direito', 'chao', 3, 20, 2);
insert into planograma values ('1234567891212', 1, 'direito', 'chao', 3, 20, 3);
insert into planograma values ('1234567891213', 1, 'direito', 'medio', 3, 20, 1);
insert into planograma values ('1234567891214', 1, 'direito', 'medio', 3, 20, 2);
insert into planograma values ('1234567891215', 1, 'direito', 'medio', 3, 20, 3);
insert into planograma values ('1234567891216', 1, 'direito', 'superior', 2, 20, 1);
insert into planograma values ('1234567891217', 1, 'direito', 'superior', 2, 20, 2);
insert into planograma values ('1234567891218', 2, 'esquerdo', 'superior', 2, 20, 1);
insert into planograma values ('1234567891219', 2, 'esquerdo', 'superior', 2, 20, 2);
insert into planograma values ('1234567891311', 2, 'esquerdo', 'medio', 2, 20, 1);
insert into planograma values ('1234567891312', 2, 'esquerdo', 'medio', 2, 20, 2);
insert into planograma values ('1234567891313', 2, 'esquerdo', 'chao', 3, 20, 1);
insert into planograma values ('1234567891314', 2, 'esquerdo', 'chao', 3, 20, 2);
insert into planograma values ('1234567891315', 2, 'esquerdo', 'chao', 3, 20, 3);
insert into planograma values ('1234567891316', 2, 'direito', 'superior', 2, 20, 1);
insert into planograma values ('1234567891317', 2, 'direito', 'superior', 2, 20, 2);
insert into planograma values ('1234567891318', 2, 'direito', 'medio', 2, 20, 1);
insert into planograma values ('1234567891319', 2, 'direito', 'medio', 2, 20, 2);
insert into planograma values ('1234567891411', 2, 'direito', 'chao', 3, 20, 1);
insert into planograma values ('1234567891412', 2, 'direito', 'chao', 3, 20, 2);
insert into planograma values ('1234567891413', 2, 'direito', 'chao', 3, 20, 3);
insert into planograma values ('1234567891414', 3, 'esquerdo', 'chao', 2, 20, 1);
insert into planograma values ('1234567891415', 3, 'esquerdo', 'chao', 2, 20, 2);
insert into planograma values ('1234567891416', 3, 'esquerdo', 'medio', 2, 20, 1);
insert into planograma values ('1234567891417', 3, 'esquerdo', 'medio', 2, 20, 2);
insert into planograma values ('1234567891418', 3, 'esquerdo', 'superior', 1, 20, 1);
insert into planograma values ('1234567891419', 3, 'direito', 'chao', 2, 20, 1);
insert into planograma values ('1234567891511', 3, 'direito', 'chao', 2, 20, 2);
insert into planograma values ('1234567891512', 3, 'direito', 'medio', 1, 20, 1);
insert into planograma values ('1234567891513', 3, 'direito', 'superior', 1, 20, 1);

insert into evento_reposicao values ('Socrates', '2017-11-22 14:00:00');            -- operador, data
insert into evento_reposicao values ('Kim Jong-un', '2017-11-22 14:05:00');
insert into evento_reposicao values ('Socrates', '2017-11-22 14:15:00');
insert into evento_reposicao values ('Socrates', '2017-11-22 14:30:00');
insert into evento_reposicao values ('Trump', '2017-11-22 14:00:00');
insert into evento_reposicao values ('Trump', '2017-11-22 14:15:00');
insert into evento_reposicao values ('Trump', '2017-11-22 14:30:00');
insert into evento_reposicao values ('Francois Hollande', '2017-11-22 14:00:00');
insert into evento_reposicao values ('Francois Hollande', '2017-11-22 14:30:00');
insert into evento_reposicao values ('Kim Jong-un', '2017-11-22 14:00:00');
insert into evento_reposicao values ('Kim Jong-un', '2017-11-22 14:30:00');


insert into reposicao values ('1234567891111', 1, 'esquerdo', 'chao', 'Socrates', '2017-11-22 14:00:00', 2);            -- ean, nro_corredor, lado, altura, operador, data, unidades_repostas
insert into reposicao values ('1234567891111', 2, 'esquerdo', 'chao', 'Kim Jong-un', '2017-11-22 14:05:00', 5);
insert into reposicao values ('1234567891112', 1, 'esquerdo', 'chao', 'Socrates', '2017-11-22 14:15:00', 2);
insert into reposicao values ('1234567891113', 1, 'esquerdo', 'chao', 'Socrates', '2017-11-22 14:30:00', 2);
insert into reposicao values ('1234567891114', 1, 'esquerdo', 'medio', 'Trump', '2017-11-22 14:00:00', 2);
insert into reposicao values ('1234567891115', 1, 'esquerdo', 'medio', 'Trump', '2017-11-22 14:15:00', 2);
insert into reposicao values ('1234567891116', 1, 'esquerdo', 'medio', 'Trump', '2017-11-22 14:30:00', 2);
insert into reposicao values ('1234567891117', 1, 'esquerdo', 'superior', 'Francois Hollande', '2017-11-22 14:00:00', 2);
insert into reposicao values ('1234567891118', 1, 'esquerdo', 'superior', 'Francois Hollande', '2017-11-22 14:30:00', 2);
insert into reposicao values ('1234567891119', 1, 'direito', 'chao', 'Kim Jong-un', '2017-11-22 14:00:00', 2);
insert into reposicao values ('1234567891211', 1, 'direito', 'chao', 'Kim Jong-un', '2017-11-22 14:30:00', 2);
