/*
 * Contratos, a de Endereços e a de Clientes. Crie também os dicionários necessários.
 * (11)95197-9317
 */
 
 create table cliente(
 				cd_cliente bigint not null auto_increment,
 				nm_cliente varchar(50) not null,
 				cpf_cliente varchar (15),
 				cnpj_cliente varchar (20),
 				tel_cliente varchar (15) not null,
 				email_cliente varchar (50),
 				primary key(cd_cliente)
 );

insert cliente(cd_cliente, nm_cliente, cpf_cliente, cnpj_cliente, tel_cliente, email_cliente)
values (default, 'Matheus Costa','381.086.618-03', null, '(11)95197-9317', 'matheus.costa.ol97@gmail.com')

insert cliente(cd_cliente, nm_cliente, cpf_cliente, cnpj_cliente, tel_cliente, email_cliente)
values (default, 'Asterisco Souza','123.456.789-00', null, '(11)99999-2222', 'exemplo@exemplo.com')

insert cliente(cd_cliente, nm_cliente, cpf_cliente, cnpj_cliente, tel_cliente, email_cliente)
values (default, 'Fulano Fula','321.654.987-00', null, '(11)22334-5566', 'exemplo2@exemplo.com')

insert cliente(cd_cliente, nm_cliente, cpf_cliente, cnpj_cliente, tel_cliente, email_cliente)
values (default, 'Empresa X',null, 'XX.XXX.XXX/XXXX-XX', '1234-5678', 'empresa_teste@teste.com')
 
select * from cliente

create table endereco(
			cd_endereco bigint not null auto_increment,
			nm_endereco varchar (50) not null,
			bairro_endereco varchar (50),
			cidade_endereco varchar (50),
			sg_uf varchar (2),
			cep_endereco varchar (10),
			primary key (cd_endereco)
);
insert endereco(cd_endereco, nm_endereco, bairro_endereco, cidade_endereco, sg_uf, cep_endereco)
values (default, 'Rua F, 26','Jardim Vitoria Regia', 'São Paulo', 'SP', '02859-190')
select * from endereco

insert endereco(cd_endereco, nm_endereco, bairro_endereco, cidade_endereco, sg_uf, cep_endereco)
values (default, 'Rua F, 123','Jardim Vitoria Regia', 'São Paulo', 'SP', '02859-190')

insert endereco(cd_endereco, nm_endereco, bairro_endereco, cidade_endereco, sg_uf, cep_endereco)
values (default, 'Alameda Afonso Schmidt, 494','Santa Terezinha', 'São Paulo', 'SP', '02450-000')

insert endereco(cd_endereco, nm_endereco, bairro_endereco, cidade_endereco, sg_uf, cep_endereco)
values (default, 'Alameda Afonso Schmidt, 494 2ºAndar','Santa Terezinha', 'São Paulo', 'SP', '02450-000')

select * from endereco

create table contratos (
			cd_contrato bigint not null auto_increment,
			nmr_contrato varchar (10),
			cd_cliente bigint,
			cd_representante_legal bigint,
			cd_tipo_contrato bigint,
			primary key (cd_contrato)
);

drop table contratos

alter table contratos add constraint fk_cod_cliente
foreign key (cd_cliente) references cliente(cd_cliente)

alter table contratos add constraint fk_cd_tipo_contrato
foreign key (cd_tipo_contrato) references tipo_contrato(cd_tipo_contrato)

insert contratos (cd_contrato, nmr_contrato, cd_tipo_contrato)
values (default, 1, 2)

insert contratos (cd_contrato, nmr_contrato, cd_tipo_contrato)
values (default, 2, 3)

insert contratos (cd_contrato, nmr_contrato, cd_tipo_contrato)
values (default, 3, 1)


select * from contratos

create table tipo_contrato(
			cd_tipo_contrato bigint not null auto_increment,
			desc_contrato varchar(20),
			primary key (cd_tipo_contrato)
)

insert tipo_contrato(cd_tipo_contrato, desc_contrato)
values (default, 'Compra e Venda')

insert tipo_contrato(cd_tipo_contrato, desc_contrato)
values (default, 'Prest. Serviços')

insert tipo_contrato(cd_tipo_contrato, desc_contrato)
values (default, 'Trabalho')

select * from tipo_contrato

select nm_cliente as 'Nome',
		cpf_cliente as 'CPF',
		cnpj_cliente as 'CNPJ',
		tel_cliente as 'Telefone',
		nm_endereco as 'Endereco',
		bairro_endereco as 'Bairro',
		sg_uf as 'UF'
from cliente
inner join endereco on endereco.cd_endereco = cliente.cd_cliente

/*^---------inner join endereco e cliente----------------------^*/

select nmr_contrato, desc_contrato
from contratos
inner join tipo_contrato on tipo_contrato.cd_tipo_contrato = contratos.cd_contrato 

/*^---------inner join contrato e tipo contrato----------------------^*/

select nm_cliente, nmr_contrato, desc_contrato
from cliente
inner join contratos on contratos.cd_contrato = cliente.cd_cliente
inner join tipo_contrato on tipo_contrato.cd_tipo_contrato = contratos.cd_tipo_contrato

/*--------------inner join's cliente, contrato e tipo contrato----------------*/





