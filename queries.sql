select fornecedor_name from fornecedor natural join
(select fornecedor_nif from
(select (max(totCat)) from (fornecedor_nif count(fornecedor_name) as totCat from
(select fornecedor_nif, produto_ean from fornecedor_sec,??? produto where produto_ean = produto_ean)
natural join produto) cross join (max(totCat)) where max(totCat) = totCat;


ISTO TA UMA BELA MERDA VASCO <3
VAI VER BEM OS NOMES DAS MERDAS AO SCHEMA :) HAVE FUN
