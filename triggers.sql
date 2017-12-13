drop trigger if exists verifica_se_primario on fornecedor;

create or replace function verifica_se_primario() returns trigger as $$
begin
	if new.fornecedor_nif in (select fornecedor_nif from produto where produto_ean = new.produto_ean)
		then raise exception 'O fornecedor % ja e primario deste produto', new.fornecedor_nif;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_se_primario_trigger before insert on fornecedor_sec
execute procedure verifica_se_primario();


drop trigger if exists verifica_se_secundario on produto;

create or replace function verifica_se_secundario() returns trigger as $$
begin
	if new.fornecedor_nif in (select fornecedor_nif from fornecedor_sec where produto_ean = new.produto_ean)
		then raise exception 'O fornecedor % ja e secundario deste produto', new.fornecedor_nif;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_se_secundario_trigger before update on produto
execute procedure verifica_se_secundario();



drop trigger if exists verifica_data on evento_reposicao;

create or replace function verifica_data() returns trigger as $$
begin
	if DATEDIFF(timestamp, new.instante, GETDATE()) >= 0
		then raise exception 'Impossivel repor no futuro, %', new.instante;
	end if;
	return new;
End;
$$ Language plpgsql;

create trigger verifica_data_trigger before insert or update on evento_reposicao
execute procedure verifica_data();
