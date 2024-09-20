create database empresa3;
use empresa3;

create table departamento(
	dcodigo int auto_increment PRIMARY KEY,
    nome varchar(50)
);

create table funcionario(
	fun_codigo int auto_increment PRIMARY KEY,
    dcodigo int,
    nome varchar(50),
    nascimento date,
    salario decimal(10,2),
    foreign key (dcodigo) references departamento(dcodigo)
);

create table dependente(
	dep_codigo int auto_increment PRIMARY KEY,
    fun_codigo int,
    nome varchar(50),
	foreign key (fun_codigo) references funcionario(fun_codigo)
);

insert into departamento(dcodigo, nome)
values(1, "RH"),(2, "TI"),(3, "GESTÃO"),(4, "PLANEJAMENTO"),(5, "SUPERVISÃO"),
(6, "ADMINISTRAÇÃO"),(7, "FINANCEIRO"),(8, "COMERCIAL"),(9, "MARKENTING"),(10, "PRODUÇÃO");

insert into funcionario(fun_codigo, dcodigo, nome, nascimento, salario)
values(1, 3, "Ana", "2000-01-07", 1500.00),(2, 7, "Roberto", "2003-10-20", 1700.00),(3, 3, "Maria", "2000-07-19", 1400.00),
(4, 1, "João", "1998-07-05", 2000.00),(5, 8, "Matheus", "2002-08-23", 1900.00),(6, 9, "Juliana", "2001-02-25", 1450.00),
(7, 2, "Marcy", "1990-03-12", 2200.00),(8, 6, "Sergio", "1995-06-30", 1830.00),(9, 10, "Adriano", "1999-11-21", 2000.00),(10, 4, "Carolina", "1994-12-20", 1800.00);

insert into dependente(dep_codigo, fun_codigo, nome)
values (1, 1, "Claudia"),(2, 2, "André"),(3, 3, "Joaquina"),(4, 4, "Maria"),(5, 5, "Julia"),(6, 6, "Sergio"),
(7, 7, "Adriana"),(8, 8, "Thiago"),(9, 9, "Mario"),(10, 10, "Weber");

select * from departamento;
select * from funcionario;
select * from dependente;