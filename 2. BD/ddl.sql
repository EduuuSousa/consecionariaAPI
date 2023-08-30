
## TB_CLIENTE

insert into tb_cliente( nm_cliente, ds_email, ds_telefone, ds_cpf, ds_cnh)
				values( ?, ?, ?, ?, ?);
                
                
	 update 	tb_cliente
		set		nm_cliente  = ?,
				ds_email = ?,
                ds_telefone = ?,
                ds_cpf = ? ,
                ds_cnh = ?
		where 	id_cliente = ?;
        
delete from 	tb_cliente
	  where		id_cliente = ?;
                
                
select  	id_cliente as id,
			nm_cliente as nome,
            ds_email as email,
            ds_telefone as telefone,
            ds_cpf as CPF,
            ds_cnh as CNH
from 		tb_cliente;
                
                
select  	id_clinte as id,
			nm_cliente as nome,
            ds_email as email,
            ds_telefone as telefone,
            ds_cpf as CPF,
            ds_cnh as CNH
from 		tb_cliente
where		nm_nome like ?;

## TB_CLIENTE

## TB_TIPOVEICULO

insert into tb_tipoveiculo( ds_tipo )
				values( ? );
                
select * from tb_tipoveculo;

## TB_TIPOVEICULO

## TB_VEICULO

insert into tb_veiculo( id_tipoveiculo, ds_modelo, ds_marca, ds_ano, ds_placa)
				values( ?, ?, ?, ?, ?);
                

                
select 		vei.id_veiculo as id,
			tip.id_tipoveiculo as TipoVeiculo,
            tip.ds_tipo as Tipo,
            vei.ds_modelo as modelo,
            vei.ds_marca as marca,
            vei.ds_ano as ano,
            vei.ds_placa
from tb_veiculo as vei 
inner join tb_tipoveiculo as tip on vei.id_tipoveiculo = tip.id_tipoveiculo

## TB_VEICULO