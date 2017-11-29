1) SELECT fornecedor_name from fornecedor NATURAL JOIN (SELECT fornecedor_nif from produto
  NATURAL JOIN (SELECT fornecedor_nif, produto_ean from fornecedor_sec UNION (SELECT fornecedor_nif, produto_ean FROM produto))
  AS totForn GROUP BY fornecedor_nif HAVING count(distinct(categoria_name)) = (SELECT max(count.maxCat)
  from (SELECT count(distinct(categoria_name)) as maxCat from produto NATURAL JOIN (SELECT fornecedor_nif, produto_ean
    from fornecedor_sec UNION (SELECT fornecedor_nif, produto_ean FROM produto)) as totForn GROUP BY fornecedor_nif) count)) as forn_max_cat;

2) SELECT fornecedor_nif, fornecedor_name FROM produto NATURAL JOIN fornecedor GROUP BY fornecedor_nif, fornecedor_name
HAVING count(distinct(categoria_name IN (SELECT categoria_name from categoria_simples))) = (SELECT count(distinct(categoria_name)) AS totCat
FROM categoria_simples);

3) SELECT produto_ean FROM produto WHERE produto_ean NOT IN (SELECT produto_ean FROM reposicao);

4) SELECT produto_ean FROM fornecedor_sec GROUP BY produto_ean HAVING count(distinct(fornecedor_nif)) > 10;

5) SELECT produto_ean FROM reposicao GROUP BY produto_ean HAVING count(distinct(operador)) = 1;
