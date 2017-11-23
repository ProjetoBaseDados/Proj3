drop table categoria cascade;
drop table categoria_simples cascade;
drop table super_categoria cascade;
drop table constituida cascade;
drop table fornecedor cascade;
drop table produto cascade;
drop table fornecedor_sec cascade;
drop table corredor cascade;
drop table prateleira cascade;
drop table planograma cascade;
drop table evento_reposicao cascade;
drop table reposicao cascade;


----------------------------------------
-- Table Creation
----------------------------------------

create table categoria
   (categoria_name 	varchar(80)	not null unique,
   constraint pk_categoria primary key(categoria_name));

create table categoria_simples
  (categoria_simples_name 	varchar(80)	not null unique,
  constraint pk_categoria_simples primary key(categoria_simples_name),
  constraint fk_categoria_simples_categoria foreign key(categoria_simples_name) references categoria(categoria_name));

create table super_categoria
  (super_categoria_name 	varchar(80)	not null unique,
  constraint pk_super_categoria primary key(super_categoria_name),
  constraint fk_super_categoria_categoria foreign key(super_categoria_name) references categoria(categoria_name));

create table constituida
  (super_categoria_name 	varchar(80)	not null,
  categoria_name 	varchar(80)	not null,
  constraint pk_constituida primary key(super_categoria_name, categoria_name),
  constraint fk_constituida_super_categoria foreign key(super_categoria_name) references super_categoria(super_categoria_name),
  constraint fk_constituida_categoria foreign key(categoria_name) references categoria(categoria_name));

create table fornecedor
  (fornecedor_nif char(9) not null unique,
  fornecedor_name 	varchar(80)	not null,
  constraint pk_fornecedor primary key(fornecedor_name, fornecedor_nif));

create table produto
  (produto_ean char(13) not null unique,
  produto_design varchar(80) not null,
  produto_data date not null,
  produto_categoria_name varchar(80) not null,
  produto_forn_primario_nif char(9) not null,
  constraint pk_produto primary key(produto_ean),
  constraint fk_produto_categoria foreign key(produto_categoria_name) references categoria(categoria_name),
  constraint fk_produto_fornecedor foreign key(produto_forn_primario_nif) references fornecedor(fornecedor_nif));

create table fornecedor_sec
  (fornecedor_sec_nif char(9) not null unique,
  fornecedor_sec_ean char(13) not null unique,
  constraint pk_fornecedor_sec primary key(fornecedor_sec_nif, fornecedor_sec_ean),
  constraint fk_fornecedor_sec_fornecedor foreign key(fornecedor_sec_nif) references fornecedor(fornecedor_nif),
  constraint fk_fornecedor_sec_produto foreign key(fornecedor_sec_ean) references produto(produto_ean));

create table corredor
  (corredor_nro int not null unique,
  largura int not null,
  constraint pk_corredor primary key(corredor_nro));

create table prateleira
  (prateleira_nro int not null unique,
  lado varchar(80) not null unique,
  altura int not null unique,
  constraint pk_prateleira primary key(prateleira_nro, lado, altura),
  constraint fk_prateleira_corredor foreign key(prateleira_nro) references corredor(corredor_nro));

create table planograma
  (planograma_ean char(13) not null unique,
  planograma_nro int not null unique,
  planograma_lado varchar(80) not null unique,
  planograma_altura int not null unique,
  face varchar(80) not null,
  unidades int not null,
  loc varchar(80) not null,
  constraint pk_planograma primary key(planograma_altura, planograma_ean, planograma_nro, planograma_lado),
  constraint fk_planograma_produto foreign key(planograma_ean) references produto(produto_ean),
  constraint fk_planograma_prateleira foreign key(planograma_nro, planograma_lado, planograma_altura)
  references prateleira(prateleira_nro, altura, largura));

create table evento_reposicao
  (operador varchar(80) not null unique,
  instante date not null unique,
  constraint pk_evento_reposicao primary key(operador, instante));

create table reposicao
  (reposicao_ean char(13) not null unique,
  reposicao_nro int not null unique,
  reposicao_lado varchar(80) not null unique,
  reposicao_altura int not null unique,
  reposicao_operador varchar(80) not null unique,
  reposicao_instante date not null unique,
  reposicao_unidades int not null,
  constraint pk_reposicao primary key(reposicao_altura, reposicao_ean, reposicao_nro, reposicao_lado, reposicao_operador, reposicao_instante),
  constraint fk_reposicao_event_repo foreign key(reposicao_operador, reposicao_instante) references evento_reposicao(operador, instante),
  constraint fk_reposicao_prateleira foreign key(reposicao_ean, reposicao_nro, reposicao_lado, reposicao_altura)
  references planograma(planograma_ean, planograma_nro, planograma_altura, planograma_largura));
