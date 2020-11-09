create table Endereco_van_costa_kley_brand(
				cd_endereco bigint not null auto_increment,
				ds_endereco varchar(50),
				nr_numero varchar(10),
				ds_bairro varchar(50),
				ds_cidade varchar (50),
				sg_uf varchar(2),
				nr_cep varchar (10),
				primary key (cd_endereco)
				
);
  

create table pedidos_van_costa_kley_brand(
			cd_pedido bigint not null auto_increment,
			nr_pedido int not null,
			cd_cliente bigint not null,
			dt_pedido date,
			vl_pedido float (6,2),
			cd_status_pedido bigint not null,
			primary key (cd_pedido)
);

create table fornecedor_van_costa_kley_brand(
			cd_fornecedor bigint not null auto_increment,
			nm_fornecedor varchar(50),
			nr_cnpj varchar(20),
			cd_tipo bigint not null,
			primary key (cd_fornecedor)
);

create table pedido_item_van_costa_kley_brand(
			cd_pedido bigint not null,
			nr_pedido_item bigint not null auto_increment,
			cd_produto bigint not null,
			qt_item int,
			vl_unitario float (6,2),
			cd_status_pedido_item int,
			primary key (nr_pedido_item,cd_pedido)
			
);

alter table pedido_item_van_costa_kley_brand add constraint fk_cd_pedido
foreign key (cd_pedido) references pedidos_van_costa_kley_brand(cd_pedido);


create table pedido_status_van_costa_kley_brand(
		cd_status_pedido bigint not null auto_increment,
		ds_status_pedido varchar(30),
		primary key (cd_status_pedido)
);


select * from pedido_status_van_costa_kley_brand
select * from pedidos_van_costa_kley_brand

desc pedidos_van_costa_kley_brand

insert pedidos_van_costa_kley_brand (cd_pedido, nr_pedido, cd_cliente,dt_pedido, vl_pedido, cd_status_pedido)
values(
	default,
	335,
	5,
	'2010-10-10',
	124.65,
	2
) 

insert pedidos_van_costa_kley_brand (cd_pedido, nr_pedido, cd_cliente,dt_pedido, vl_pedido, cd_status_pedido)
values(
	default,
	532,
	7,
	'2010-10-12',
	null,
	1
) 

select * from pedido_status_van_costa_kley_brand
insert pedido_status_van_costa_kley_brand (cd_status_pedido, ds_status_pedido)
values (default, 'fechado')


select cd_cliente, nr_pedido, ds_status_pedido, vl_pedido
from pedidos_van_costa_kley_brand pvckb 
inner join  pedido_status_van_costa_kley_brand  stats on stats.cd_status_pedido = pvckb.cd_status_pedido


select cd_cliente, nr_pedido, ds_status_pedido, vl_pedido
from pedidos_van_costa_kley_brand pvckb 
left join  pedido_status_van_costa_kley_brand  stats on stats.cd_status_pedido = pvckb.cd_status_pedido




