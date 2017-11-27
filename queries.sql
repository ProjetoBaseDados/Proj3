1) SELECT fornecedor_nif from produto NATURAL JOIN (SELECT fornecedor_nif, produto_ean from fornecedor_sec UNION (SELECT fornecedor_nif, produto_ean FROM produto)) AS totForn GROUP BY fornecedor_nif HAVING count(distinct(categoria_name)) > 4;

2) SELECT fornecedor_nif, fornecedor_name FROM produto NATURAL JOIN fornecedor GROUP BY fornecedor_nif, fornecedor_name HAVING count(distinct(categoria_name IN (SELECT categoria_name from categoria_simples))) = (SELECT count(distinct(categoria_name)) AS totCat FROM categoria_simples);
