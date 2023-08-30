USE infoB_db;

drop table tb_cliente;

create table tb_cliente(
						id_cliente					int primary key auto_increment,
                        nm_cliente					varchar(100) not null,
                        ds_email					varchar(100) not null ,
                        ds_telefone					varchar(100) not null ,
                        ds_cpf						varchar(100) not null ,
                        ds_cnh						varchar(100) not null 
                        );
                        
create table tb_tipoveiculo(
							id_tipoveiculo			int primary key auto_increment,
                            ds_tipo					varchar(100) not null
                            );
                        
drop table tb_veiculo;
                        
create table tb_veiculo(
						id_veiculo					int primary key auto_increment,
                        id_tipoVeiculo				int,
                        ds_modelo					varchar(100) not null,
                        ds_marca					varchar(100) not null,
                        ds_ano						varchar(100) not null,
                        ds_placa					varchar(100) not null,
                        foreign key (id_tipoveiculo) references tb_tipoveiculo(id_tipoveiculo)
                        );
                        
select		id_veiculo as id,
			id_tipoveiculo
                        