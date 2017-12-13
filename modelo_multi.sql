-----------------------------
-- Modelo Multidimencional
-----------------------------

drop table if exists table_facts cascade;
drop table if exists d_tempo cascade;
drop table if exists d_produto cascade;

create table d_produto
	(cean char(13) not null,
	categoria varchar(20) not null,
	nif_fornecedor_principal varchar(10) not null,
	constraint pk_cean primary key(cean));

create table d_tempo
	(data timestamp not null primary key,
	day int not null,
	month int not null,
	year int not null);

create table table_facts
    (cean char(13) not null,
    data timestamp not null,
    constraint fk_data foreign key(data) references d_tempo(data),
    constraint fk_cean foreign key(cean) references d_produto(cean));

insert into d_produto (cean, categoria, nif_fornecedor_principal) select produto_ean, categoria_name, fornecedor_nif from produto;
insert into d_tempo (data, day, month, year) select instante, DATE_PART('day', instante), DATE_PART('month', instante), DATE_PART('year', instante) from reposicao;
insert into table_facts (cean, data) select produto_ean, instante from reposicao;


-------------------
-- Data Analytics
-------------------

-- Querie with ROLLUP

select count(data), categoria, year, month
from table_facts
NATURAL JOIN d_tempo
NATURAL JOIN d_produto
where nif_fornecedor_principal = '123455678'
group by rollup (categoria, year, month)
order by count(data) desc;

-- Querie with UNION

select count(data), categoria, year, month
from table_facts
NATURAL JOIN d_tempo
NATURAL JOIN d_produto
where nif_fornecedor_principal = '123455678'
group by categoria, year, month
UNION
select count(data), categoria, year, null
from table_facts
NATURAL JOIN d_tempo
NATURAL JOIN d_produto
where nif_fornecedor_principal = '123455678'
group by categoria, year
UNION
select count(data), categoria, null, null
from table_facts
NATURAL JOIN d_tempo
NATURAL JOIN d_produto
where nif_fornecedor_principal = '123455678'
group by categoria
UNION
select count(data), null, null, null
from table_facts
NATURAL JOIN d_tempo
NATURAL JOIN d_produto
where nif_fornecedor_principal = '123455678';
