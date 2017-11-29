drop table if exists categoria cascade;
drop table if exists categoria_simples cascade;
drop table if exists super_categoria cascade;
drop table if exists constituida cascade;
drop table if exists fornecedor cascade;
drop table if exists produto cascade;
drop table if exists fornecedor_sec cascade;
drop table if exists corredor cascade;
drop table if exists prateleira cascade;
drop table if exists planograma cascade;
drop table if exists reposicao cascade;
drop table if exists evento_reposicao cascade;

----------------------------------------
-- Table Creation
----------------------------------------

create table categoria
   (categoria_name 	varchar(80)	not null unique,
   constraint pk_categoria primary key(categoria_name));

create table categoria_simples
  (categoria_name 	varchar(80)	not null unique,
  constraint pk_categoria_simples primary key(categoria_name),
  constraint fk_categoria_simples_categoria foreign key(categoria_name) references categoria(categoria_name));

create table super_categoria
  (categoria_name 	varchar(80)	not null unique,
  constraint pk_super_categoria primary key(categoria_name),
  constraint fk_super_categoria_categoria foreign key(categoria_name) references categoria(categoria_name));

create table constituida
  (super_categoria_name 	varchar(80)	not null,
  sub_categoria_name 	varchar(80)	not null unique,
  constraint pk_constituida primary key(super_categoria_name, sub_categoria_name),
  constraint fk_constituida_super_categoria foreign key(super_categoria_name) references super_categoria(categoria_name),
  constraint fk_constituida_categoria foreign key(sub_categoria_name) references categoria(categoria_name));

create table fornecedor
  (fornecedor_nif char(9) not null unique,
  fornecedor_name 	varchar(80)	not null,
  constraint pk_fornecedor primary key(fornecedor_nif, fornecedor_name));

create table produto
  (produto_ean char(13) not null unique,
  produto_design varchar(80) not null,
  produto_data date not null,
  categoria_name varchar(80) not null,
  fornecedor_nif char(9) not null,
  constraint pk_produto primary key(produto_ean),
  constraint fk_produto_categoria foreign key(categoria_name) references categoria(categoria_name),
  constraint fk_produto_fornecedor foreign key(fornecedor_nif) references fornecedor(fornecedor_nif));

create table fornecedor_sec
  (fornecedor_nif char(9) not null,
  produto_ean char(13) not null,
  constraint pk_fornecedor_sec primary key(fornecedor_nif, produto_ean),
  constraint fk_fornecedor_sec_fornecedor foreign key(fornecedor_nif) references fornecedor(fornecedor_nif),
  constraint fk_fornecedor_sec_produto foreign key(produto_ean) references produto(produto_ean));

create table corredor
  (corredor_nro int not null unique,
  corredor_largura int not null,
  constraint pk_corredor primary key(corredor_nro));

create table prateleira
  (corredor_nro int not null,
  prateleira_lado varchar(80) not null,
  prateleira_altura varchar(10) not null,
  constraint pk_prateleira primary key(corredor_nro, prateleira_lado, prateleira_altura),
  constraint fk_prateleira_corredor foreign key(corredor_nro) references corredor(corredor_nro));

create table planograma
  (produto_ean char(13) not null,
  corredor_nro int not null,
  prateleira_lado varchar(80) not null,
  prateleira_altura varchar(10) not null,
  face int not null,
  unidades int not null,
  loc int not null,
  constraint pk_planograma primary key(prateleira_altura, produto_ean, corredor_nro, prateleira_lado),
  constraint fk_planograma_produto foreign key(produto_ean) references produto(produto_ean),
  constraint fk_planograma_prateleira foreign key(corredor_nro, prateleira_lado, prateleira_altura)
  references prateleira(corredor_nro, prateleira_lado, prateleira_altura));

create table evento_reposicao
  (operador varchar(80) not null,
  instante timestamp not null,
  constraint pk_evento_reposicao primary key(operador, instante));

create table reposicao
  (produto_ean char(13) not null,
  corredor_nro int not null,
  prateleira_lado varchar(80) not null,
  prateleira_altura varchar(10) not null,
  operador varchar(80) not null,
  instante timestamp not null,
  reposicao_unidades int not null,
  constraint pk_reposicao primary key(prateleira_altura, produto_ean, corredor_nro, prateleira_lado, operador, instante),
  constraint fk_reposicao_event_repo foreign key(operador, instante) references evento_reposicao(operador, instante),
  constraint fk_reposicao_planograma foreign key(produto_ean, corredor_nro, prateleira_lado, prateleira_altura)
  references planograma(produto_ean, corredor_nro, prateleira_lado, prateleira_altura));
