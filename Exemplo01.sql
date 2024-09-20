CREATE DATABASE ger_venda;
use ger_venda;

CREATE TABLE produtos(
produto_id int auto_increment primary key,
nome varchar (50),
preco decimal (10,2),
estoque int 
);

CREATE TABLE vendas (
venda_id int auto_increment primary key,
poduto_id int,
quantidade int,
data_venda date,
foreign key (poduto_id) references produtos (produto_id)
);

insert into produtos (nome, preco, estoque)
values ("Notebok_Apple", 7000.00, 35),
	("Notebok_Positivo", 5000.00, 10),
    ("Notebok_Lenovo", 4000.00, 20),
    ("Notebok_Sansung", 8000.00, 5),
    ("Notebok_Mackbook", 10000.00, 5);

select * from produtos;

insert into vendas (poduto_id, quantidade, data_venda)
values(1,5,"2024-09-20");

