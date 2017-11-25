select fornecedor_name from fornecedor natural join
(select fornecedor_nif from
(select max(totCat) from (fornecedor_nif count(fornecedor_name) as totalProduct from
(select fornecedor_nif, produto_ean from fornecedor_sec Union
select fornecedor_nif, produto_ean from produto)
natural join produto) cross join (max(totCat)) where max(totCat) = totCat;
