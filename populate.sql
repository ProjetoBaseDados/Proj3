----------------------------------------
-- Populate Relations
----------------------------------------

insert into categoria values ('Refrigerantes');       --super_categoria
insert into categoria values ('Coca-Cola');           --sub
insert into categoria values ('Ice Tea');             --sub
insert into categoria values ('Sprite');              --sub
insert into categoria values ('Bebidas Alcoolicas');  --super_categoria
insert into categoria values ('Vinho');               --sub
insert into categoria values ('Cerveja');             --sub
insert into categoria values ('Vodka');               --sub
insert into categoria values ('Whisky');              --sub
insert into categoria values ('Rum');                 --sub
insert into categoria values ('Agua');                --simples
insert into categoria values ('Leite');               --simples
insert into categoria values ('Comidas');             --super_categoria
insert into categoria values ('Peixe Fresco');        --sub
insert into categoria values ('Peixe Congelado');     --sub
insert into categoria values ('Carne do Talho');      --sub
insert into categoria values ('Carne Empacotada');    --sub
insert into categoria values ('Gomas');               --simples
insert into categoria values ('Sal');                 --simples
insert into categoria values ('Guardanapos');         --simples
insert into categoria values ('Cereais');             --simples
insert into categoria values ('Chocolates');          --simples
insert into categoria values ('Iogurtes');            --simples
insert into categoria values ('Pasta de Dentes');     --simples
insert into categoria values ('Escovas de Dentes');   --simples

insert into categoria_simples values ('Gomas');
insert into categoria_simples values ('Sal');
insert into categoria_simples values ('Guardanapos');
insert into categoria_simples values ('Cereais');
insert into categoria_simples values ('Chocolates');
insert into categoria_simples values ('Iogurtes');
insert into categoria_simples values ('Pasta de dentes');
insert into categoria_simples values ('Escovas de dentes');
insert into categoria_simples values ('Agua');
insert into categoria_simples values ('Leite');

insert into super_categoria values ('Refrigerantes');
insert into super_categoria values ('Bebidas Alcoolicas');
insert into super_categoria values ('Comidas');

insert into constituida values ('Refrigerantes', 'Coca-Cola');    --super_categoria, sub
insert into constituida values ('Refrigerantes', 'Ice Tea');
insert into constituida values ('Refrigerantes', 'Sprite');
insert into constituida values ('Bebidas Alcoolicas', 'Vinho');
insert into constituida values ('Bebidas Alcoolicas', 'Cerveja');
insert into constituida values ('Bebidas Alcoolicas', 'Vodka');
insert into constituida values ('Bebidas Alcoolicas', 'Whisky');
insert into constituida values ('Bebidas Alcoolicas', 'Rum');
insert into constituida values ('Comidas', 'Peixe Fresco');
insert into constituida values ('Comidas', 'Peixe Congelado');
insert into constituida values ('Comidas', 'Carne do Talho');
insert into constituida values ('Comidas', 'Carne empacotada');

insert into fornecedor values ('123456789', 'Forn_9');      --nif, nome
insert into fornecedor values ('123456788', 'Forn_8');
insert into fornecedor values ('123456787', 'Forn_7');
insert into fornecedor values ('123456786', 'Forn_6');
insert into fornecedor values ('123456785', 'Forn_5');
insert into fornecedor values ('123456784', 'Forn_4');
insert into fornecedor values ('123456783', 'Forn_3');
insert into fornecedor values ('123456782', 'Forn_2');
insert into fornecedor values ('123456781', 'Forn_1');
insert into fornecedor values ('123456780', 'Forn_0');

insert into produto values ('1234567891011', 'cola pleb', '2017-11-22', 'Coca-Cola', '123456789'); --ean, design, data, nome categoria, fornecedorP_nif
insert into produto values ('1234567891012', 'Coca-Cola OG', '2017-11-22', 'Coca-Cola', '123456789');
insert into produto values ('1234567891013', 'Ice Tea Pessego', '2017-11-22', 'Ice Tea', '123456789');
insert into produto values ('1234567891014', 'Ice Tea Limao', '2017-11-22', 'Ice Tea', '123456789');
insert into produto values ('1234567891015', 'sprite pleb', '2017-11-22', 'Sprite', '123456789');
insert into produto values ('1234567891016', 'Sprite', '2017-11-22', 'Sprite', '123456789');
insert into produto values ('1234567891017', 'Casal Garcia', '2017-11-22', 'Vinho', '123456788');
insert into produto values ('1234567891018', 'Vinho do Porto', '2017-11-22', 'Vinho', '123456788');
insert into produto values ('1234567891019', 'Cerveja Sagres 1L', '2017-11-22', 'Cerveja', '123456788');
insert into produto values ('1234567891111', 'Cerveja SuperBock 1L', '2017-11-22', 'Cerveja', '123456788');
insert into produto values ('1234567891112', 'Cerveja SuperBock Grade', '2017-11-22', 'Cerveja', '123456788');
insert into produto values ('1234567891113', 'Eristoff Branca', '2017-11-22', 'Vodka', '123456788');
insert into produto values ('1234567891114', 'Eristoff Preta', '2017-11-22', 'Vodka', '123456788');
insert into produto values ('1234567891115', 'Jack Daniels', '2017-11-22', 'Whisky', '123456788');
insert into produto values ('1234567891116', 'Captain Morgan', '2017-11-22', 'Rum', '123456788');
insert into produto values ('1234567891117', 'Bacardi', '2017-11-22', 'Rum', '123456788');
insert into produto values ('1234567891118', 'Garafao Luso', '2017-11-22', 'Agua', '123456787');
insert into produto values ('1234567891119', 'Serra da Estrela 330mil', '2017-11-22', 'Agua', '123456787');
insert into produto values ('1234567891211', 'Leite Mimosa Pack 6 1L', '2017-11-22', 'Leite', '123456786');
insert into produto values ('1234567891212', 'Matinal Magro 1L', '2017-11-22', 'Leite', '123456786');
insert into produto values ('1234567891213', 'Dourada do Mar', '2017-11-22', 'Peixe Fresco', '123456785');
insert into produto values ('1234567891214', 'Sardinhas', '2017-11-22', 'Peixe Fresco', '123456785');
insert into produto values ('1234567891215', 'Salmao Congelado', '2017-11-22', 'Peixe Congelado', '123456785');
insert into produto values ('1234567891216', 'Douradinhos Congelados', '2017-11-22', 'Peixe Congelado', '123456785');
insert into produto values ('1234567891217', 'Peito de Frango', '2017-11-22', 'Carne do Talho', '123456784');
insert into produto values ('1234567891218', 'Borrego', '2017-11-22', 'Carne do Talho', '123456784');
insert into produto values ('1234567891219', 'Costeletas de Porco', '2017-11-22', 'Carne do Talho', '123456784');
insert into produto values ('1234567891311', 'Hamburguer de Vaca', '2017-11-22', 'Carne Empacotada', '123456784');
insert into produto values ('1234567891312', 'Carne Picada', '2017-11-22', 'Carne Empacotada', '123456784');
insert into produto values ('1234567891313', 'Ursinhos', '2017-11-22', 'Gomas', '123456783');
insert into produto values ('1234567891314', 'Tubaroes', '2017-11-22', 'Gomas', '123456783');
insert into produto values ('1234567891315', 'Ovos Estrelados', '2017-11-22', 'Gomas', '123456783');
insert into produto values ('1234567891316', 'Sal Fino', '2017-11-22', 'Sal', '123456783');
insert into produto values ('1234567891317', 'Guardanapos plus Renova', '2017-11-22', 'Guardanapos', '123456783');
insert into produto values ('1234567891318', 'Special K integral', '2017-11-22', 'Cereais', '123456782');
insert into produto values ('1234567891319', 'Estrelitas', '2017-11-22', 'Cereais', '123456782');
insert into produto values ('1234567891411', 'Cornflakes', '2017-11-22', 'Cereais', '123456782');
insert into produto values ('1234567891412', 'Milka de Leite', '2017-11-22', 'Chocolates', '123456782');
insert into produto values ('1234567891413', 'Toblerone', '2017-11-22', 'Chocolates', '123456782');
insert into produto values ('1234567891414', 'Mars', '2017-11-22', 'Chocolates', '123456782');
insert into produto values ('1234567891415', 'Iogurte Grego Natural', '2017-11-22', 'Iogurtes', '123456781');
insert into produto values ('1234567891416', 'Iogurte Grego Acucarado', '2017-11-22', 'Iogurtes', '123456781');
insert into produto values ('1234567891417', 'Actimel', '2017-11-22', 'Iogurtes', '123456781', '123456780');
insert into produto values ('1234567891418', 'Trident de Morango', '2017-11-22', 'Pasta de Dentes', '123456780');
insert into produto values ('1234567891419', 'Colgate Sensitive Pro-Activo', '2017-11-22', 'Pasta de Dentes', '123456780');
insert into produto values ('1234567891511', 'Escova Electrica', '2017-11-22', 'Escova de Dentes', '123456780');
insert into produto values ('1234567891412', 'Escova Simples', '2017-11-22', 'Escova de Dentes', '123456780');
insert into produto values ('1234567891413', 'Pack 5 Escovas Simples', '2017-11-22', 'Escova de Dentes', '123456780');
