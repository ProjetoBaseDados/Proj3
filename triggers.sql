--------------------------------
-- Restrições de Integridade
--------------------------------

-- Trigger que verifica a insercao de dados na tabela dos fornecedores secundarios

drop trigger if exists verifica_se_primario_trigger on fornecedor_sec;

create or replace function verifica_se_primario() returns trigger as $$
begin
	if new.fornecedor_nif in (select fornecedor_nif from produto where produto_ean = new.produto_ean)
		then raise exception 'O fornecedor % ja e primario do produto %', new.fornecedor_nif, new.produto_ean;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_se_primario_trigger after insert on fornecedor_sec
for each row execute procedure verifica_se_primario();

-- Trigger que verifica a insercao de dados na tabela dos fornecedores secundarios

drop trigger if exists verifica_se_secundario_trigger on produto;

create or replace function verifica_se_secundario() returns trigger as $$
begin
	if new.fornecedor_nif in (select fornecedor_nif from fornecedor_sec where produto_ean = new.produto_ean)
		then raise exception 'O fornecedor % ja e secundario deste produto', new.fornecedor_nif;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_se_secundario_trigger after update on produto
for each row execute procedure verifica_se_secundario();

-- Trigger que verifica se a data de reposicao é presente ou passada

drop trigger if exists verifica_data_trigger on evento_reposicao;

create or replace function verifica_data() returns trigger as $$
begin
	if new.instante - now()::timestamp > '0 second'
		then raise exception 'A data actual é %, impossivel repor produtos em %.', now()::timestamp, new.instante;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_data_trigger after insert or update on evento_reposicao
for each row execute procedure verifica_data();
