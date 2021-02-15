--2 - Crear una tabla (create table - sp_tables - sp_columns - drop table)
create database BD1

use BD1

if OBJECT_ID('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)

exec sp_tables @table_owner='dbo'

sp_columns Agenda

drop table Agenda

drop table Agenda

--3 - Insertar y recuperar registros de una tabla (insert into - select)
if OBJECT_ID('Agenda') is not null
	drop database Agenda;

create table Agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)

exec sp_tables @table_owner='dbo'

sp_columns Agenda;

insert into Agenda(apellido, nombre, domicilio, telefono) values('Moreno','Alberto','Colon 123','4234567');

insert into Agenda(apellido, nombre, domicilio, telefono) values('Torres','Juan','Avellaneda 135','4458787');

select* from Agenda

drop table Agenda

--4 - Tipos de datos básicos
if OBJECT_ID('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	  nombre varchar(20),
	  actor varchar(20),
	  duracion integer,
	  cantidad integer
)

exec sp_tables @table_owner='dbo'

sp_columns Peliculas

insert into Peliculas(nombre, actor, duracion, cantidad) values('Mision imposible','Tom Cruise',128,3);
insert into Peliculas(nombre, actor, duracion, cantidad) values('Mision imposible 2','Tom Cruise',130,2);
insert into Peliculas(nombre, actor, duracion, cantidad) values('Mujer bonita','Julia Roberts',118,3);
insert into Peliculas(nombre, actor, duracion, cantidad) values('Elsa y Fred','China Zorrilla',110,2);

select* from Peliculas

--5 - Recuperar algunos campos (select)
if OBJECT_ID('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	  titulo varchar(20),
	  actor varchar(20),
	  duracion integer,
	  cantidad integer
)

exec sp_tables @table_owner='dbo'

sp_columns Peliculas

insert into Peliculas(titulo, actor, duracion, cantidad) values('Mision imposible','Tom Cruise',128,3);
insert into Peliculas(titulo, actor, duracion, cantidad) values('Mision imposible 2','Tom Cruise',130,2);
insert into Peliculas(titulo, actor, duracion, cantidad) values('Mujer bonita','Julia Roberts',118,3);
insert into Peliculas(titulo, actor, duracion, cantidad) values('Elsa y Fred','China Zorrilla',110,2);

select titulo, actor from Peliculas;
select titulo, duracion from Peliculas;
select titulo, cantidad from Peliculas;

--6 - Recuperar algunos registros (where)
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)

exec sp_tables @table_owner='dbo'

sp_columns Agenda

insert into Agenda(apellido, nombre, domicilio, telefono) values ('Acosta', 'Ana', 'Colon 123', '4234567');
insert into Agenda(apellido, nombre, domicilio, telefono) values('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
insert into Agenda(apellido, nombre, domicilio, telefono) values('Lopez', 'Hector', 'Salta 545', '4887788');
insert into Agenda(apellido, nombre, domicilio, telefono) values('Lopez', 'Luis', 'Urquiza 333', '4545454');
insert into Agenda(apellido, nombre, domicilio, telefono) values('Lopez', 'Marisa', 'Urquiza 333', '4545454');

select* from Agenda;
select* from Agenda where nombre='Marisa';
select nombre, domicilio from Agenda where apellido='Lopez';
select nombre from Agenda where telefono='4545454';

--7 - Operadores relacionales
if object_id('Articulos') is not null
	drop table Articulos;

create table  Articulos
(
	codigo integer,
	nombre varchar(20),
	descripcion varchar(30),
	precio float,
	cantidad integer
)

sp_columns Articulos

insert into Articulos(codigo, nombre, descripcion, precio,cantidad) values(1,'impresora','Epson Stylus C45',400.80,20);
insert into Articulos(codigo, nombre, descripcion, precio,cantidad) values(2,'impresora','Epson Stylus C85',500,30);
insert into Articulos(codigo, nombre, descripcion, precio,cantidad) values(3,'monitor','Samsung 14',800,10);
insert into Articulos(codigo, nombre, descripcion, precio,cantidad) values(4,'teclado','ingles Biswal',100,50);
insert into Articulos(codigo, nombre, descripcion, precio,cantidad) values(5,'teclado','español Biswal',90,50);

select* from Articulos where nombre='impresora';
select* from Articulos where precio>=400;
select codigo, nombre from Articulos where cantidad<30;
select nombre, descripcion from Articulos where precio<>100;

--8 - Borrar registros (delete)
if object_id('Agenda') is not null
	drop table Agenda;

create table Agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)

insert into Agenda(apellido,nombre,domicilio,telefono) values('Alvarez','Alberto','Colon 123','4234567');
insert into Agenda(apellido,nombre,domicilio,telefono) values('Juarez','Juan','Avellaneda 135','4458787');
insert into Agenda(apellido,nombre,domicilio,telefono) values('Lopez','Maria','Urquiza 333','4545454');
insert into Agenda(apellido,nombre,domicilio,telefono) values('Lopez','Jose','Urquiza 333','4545454');
insert into Agenda(apellido,nombre,domicilio,telefono) values('Salas','Susana','Gral. Paz 1234','4123456');

delete from Agenda where nombre='Juan';
delete from Agenda where telefono='4545454';
select* from Agenda;
delete from Agenda;
select* from Agenda;
 
--9 - Actualizar registros (update)
if object_id('Agenda') is not null
	drop table Agenda;

create table agenda
(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
)

insert into agenda(apellido,nombre,domicilio,telefono) values ('Acosta','Alberto','Colon 123','4234567');
insert into agenda(apellido,nombre,domicilio,telefono) values ('Juarez','Juan','Avellaneda 135','4458787');
insert into agenda(apellido,nombre,domicilio,telefono) values ('Lopez','Maria','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values ('Lopez','Jose','Urquiza 333','4545454');
insert into agenda(apellido,nombre,domicilio,telefono) values ('Suarez','Susana','Gral. Paz 1234','4123456');

update Agenda set nombre='Juan Jose' where nombre='Juan';
select* from Agenda;
update Agenda set telefono='4445566' where telefono='4545454';
select* from Agenda;
update Agenda set nombre='Juan Jose' where nombre='Juan';
select* from Agenda;

--11 - Valores null (is null)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo integer not null,
	nombre varchar(20) not null,
    laboratorio varchar(20),
    precio float,
    cantidad integer not null
)

exec sp_columns Medicamentos

insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(1,'Sertal gotas',null,null,100); 
insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(2,'Sertal compuesto',null,8.90,150);
insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(3,'Buscapina','Roche',null,200);

select* from Medicamentos;

insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(4,'Bayaspirina','',0,150);
insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(0,'','Bayer',15.60,0);

select* from Medicamentos;

insert into Medicamentos(codigo,nombre,laboratorio,precio,cantidad) values(null,'Amoxidal jarabe','Bayer',25,120);

select* from Medicamentos where laboratorio is null;
select* from Medicamentos where laboratorio='';
select* from Medicamentos where precio is null;
select* from Medicamentos where precio=0;
select* from Medicamentos where laboratorio<>'';
select* from Medicamentos where laboratorio is not null;
select* from Medicamentos where precio<>0;
select* from Medicamentos where precio is not null;

--12 - Clave primaria
if object_id('Libros') is not null
	drop table Libros;

create table Libros
(
	codigo int not null,
	titulo varchar(40) not null,
	autor varchar(20),
	editorial varchar(15),
	primary key(codigo)
)

insert into Libros(codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
insert into Libros(codigo,titulo,autor,editorial) values (2,'Martin Fierro','Jose Hernandez','Planeta');
insert into Libros(codigo,titulo,autor,editorial) values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

insert into Libros(codigo,titulo,autor,editorial) values (1,'El aleph','Borges','Emece');
insert into Libros(codigo,titulo,autor,editorial) values (null,'Aprenda PHP','Mario Molina','Nuevo Siglo');

update Libros set codigo=1 where titulo='Martin Fierro';

--13 - Campo con atributo Identity
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo int identity,
    nombre varchar(20) not null,
    laboratorio varchar(20),
    precio float,
    cantidad integer
)

exec sp_columns Medicamentos

insert into medicamentos(nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into medicamentos(nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into medicamentos(nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

select* from Medicamentos;

insert into medicamentos (codigo, nombre, laboratorio,precio,cantidad) values(14,'Amoxidal 500','Bayer',15.60,100);

update medicamentos set codigo=9 where nombre='Sertal';

delete from Medicamentos where codigo=3;

insert into medicamentos (nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);
select* from Medicamentos;

--14 - Otras características del atributo Identity
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo integer identity(10,1),
	nombre varchar(20) not null,
	laboratorio varchar(20),
	precio float,
	cantidad integer
)

insert into Medicamentos(nombre, laboratorio,precio,cantidad) values('Sertal','Roche',5.2,100);
insert into Medicamentos(nombre, laboratorio,precio,cantidad) values('Buscapina','Roche',4.10,200);
insert into Medicamentos(nombre, laboratorio,precio,cantidad) values('Amoxidal 500','Bayer',15.60,100);

select * from Medicamentos;

insert into Medicamentos(codigo,laboratorio,precio,cantidad) values(2,'Amoxidal 500','Bayer',15.60,100);

set identity_insert Medicamentos on

insert into Medicamentos(nombre, laboratorio,precio,cantidad) values('Amoxilina 500','Bayer',15.60,100);
insert into Medicamentos(codigo,nombre, laboratorio,precio,cantidad) values(11,'Buscapina','Roche',4.10,200);

select ident_seed('Medicamentos');
select ident_incr('Medicamentos');

--15 - Truncate table
if object_id('Alumnos') is not null
	drop table Alumnos;

create table Alumnos
(
	legajo int identity,
	documento varchar(8),
	nombre varchar(30),
	domicilio varchar(30)
)

insert into Alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');

delete from Alumnos

insert into Alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
select* from Alumnos

truncate table Alumnos
insert into Alumnos (documento,nombre,domicilio) values('22345345','Perez Mariana','Colon 234');
insert into Alumnos (documento,nombre,domicilio) values('23545345','Morales Marcos','Avellaneda 348');
insert into Alumnos (documento,nombre,domicilio) values('24356345','Gonzalez Analia','Caseros 444');
insert into Alumnos (documento,nombre,domicilio) values('25666777','Torres Ramiro','Dinamarca 209');
select* from Alumnos

--17 - Tipo de dato (texto)
if object_id('Autos') is not null
	drop table Autos;

create table Autos
(
	patente char(6),
	marca varchar(20),
	modelo char(4),
	precio float,
	primary key (patente)
)

insert into Autos values('ACD123','Fiat 128','1970',15000);
insert into Autos values('ACG234','Renault 11','1990',40000);
insert into Autos values('BCD333','Peugeot 505','1990',80000);
insert into Autos values('GCD123','Renault Clio','1990',70000);
insert into Autos values('BCC333','Renault Megane','1998',95000);
insert into Autos values('BVF543','Fiat 128','1975',20000);

select * from Autos where modelo='1990';

--18 - Tipo de dato (numérico)
if object_id('Cuentas') is not null
	drop table cuentas;

create table Cuentas
(
	numero int not null,
	documento char(8),
	nombre varchar(30),
	saldo money,
	primary key (numero)
)

insert into Cuentas(numero,documento,nombre,saldo) values('1234','25666777','Pedro Perez',500000.60);
insert into Cuentas(numero,documento,nombre,saldo) values('2234','27888999','Juan Lopez',-250000);
insert into Cuentas(numero,documento,nombre,saldo) values('3344','27888999','Juan Lopez',4000.50);
insert into Cuentas(numero,documento,nombre,saldo) values('3346','32111222','Susana Molina',1000);

select* from Cuentas where saldo>4000;
select numero, saldo from Cuentas where nombre='Juan Lopez';
select* from Cuentas where saldo<0;
select* from Cuentas where numero>=3000;

--19 - Tipo de dato (fecha y hora)
if object_id('Alumnos') is not null
	drop table Alumnos;

create table Alumnos
(
	apellido varchar(30),
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	fechanacimiento datetime
)

set dateformat 'dmy';

insert into Alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');
insert into Alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');
insert into Alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);
insert into Alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

select * from Alumnos where fechaingreso<'1-1-91';
select * from Alumnos where fechanacimiento is null;

insert into Alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

set dateformat 'mdy';

insert into Alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);
select* from Alumnos 

--20 - Ingresar algunos campos (insert into)
if object_id('Cuentas') is not null
	drop table Cuentas;

create table Cuentas
(
	numero int identity,
	documento char(8) not null,
	nombre varchar(30),
	saldo money
)

insert into Cuentas values (1,'25666777','Juan Perez',2500.50);
insert into Cuentas values ('25666777','Juan Perez',2500.50);
insert into Cuentas(documento,saldo) values ('28999777',-5500);
insert into Cuentas(numero,documento,nombre,saldo) values (5,'28999777','Luis Lopez',34000);
insert into Cuentas(numero,documento,nombre) values (3344,'28999777','Luis Lopez',34000);
insert into Cuentas(nombre, saldo) values ('Luis Lopez',34000);

select* from Cuentas;

--21 - Valores por defecto (default)
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
)

exec sp_columns visitantes;

insert into visitantes(nombre, domicilio, montocompra) values('Susana Molina','Colon 123',59.80);
insert into visitantes(nombre, edad, ciudad, mail) values('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
select *from visitantes;

insert into visitantes values('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);
select * from visitantes

insert into visitantes default values;
select * from visitantes

--22 - Columnas calculadas (operadores aritméticos y de concatenación)
if object_id ('Articulos') is not null
	drop table Articulos;

create table Articulos
(
	codigo int identity,
	nombre varchar(20),
	descripcion varchar(30),
	precio smallmoney,
	cantidad tinyint default 0,
	primary key (codigo)
)

insert into Articulos(nombre, descripcion, precio,cantidad) values('impresora','Epson Stylus C45',400.80,20);
insert into Articulos(nombre, descripcion, precio) values('impresora','Epson Stylus C85',500);
insert into Articulos(nombre, descripcion, precio) values('monitor','Samsung 14',800);
insert into Articulos(nombre, descripcion, precio,cantidad) values('teclado','ingles Biswal',100,50);
select* from Articulos;

update Articulos set precio = precio + (precio*0.15);
select* from Articulos;

select nombre+'-'+descripcion from Articulos;
select* from Articulos;

update Articulos set cantidad = cantidad-5 where nombre='teclado';
select* from Articulos;

--23 - Alias
if object_id ('Libros') is not null
	drop table Libros;

create table Libros
(
	codigo int identity,
	titulo varchar(40) not null,
	autor varchar(20) default 'Desconocido',
	editorial varchar(20),
	precio decimal(6,2),
	cantidad tinyint default 0,
	primary key (codigo)
)

insert into Libros(titulo,autor,editorial,precio) values('El aleph','Borges','Emece',25);
insert into Libros values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
insert into Libros(titulo,autor,editorial,precio,cantidad) values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

select codigo, titulo, autor, editorial, precio, cantidad, precio*cantidad as 'Monto Total' from Libros;
select titulo, autor, precio, precio*0.10 as Descuento, precio-(precio*0.10) as 'Precio Final' from Libros where editorial='Emece';
select titulo+'-'+autor as 'Titulo y Autor' from Libros;

--27 - Funciones para el uso de fechas y horas
if object_id ('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	nombre varchar(30) not null,
	apellido varchar(20) not null,
	documento char(8),
	fechanacimiento datetime,
	fechaingreso datetime,
	sueldo decimal(6,2),
	primary key(documento)
)

insert into Empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
insert into Empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
insert into Empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
insert into Empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
insert into Empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

select nombre+space(1)+upper(apellido) as 'Nombre y Apellido', stuff(documento,1,0,'DNI Nº ') as documento,
stuff(sueldo,1,0,'$ ') as sueldo from Empleados;

select documento, stuff(ceiling(sueldo),1,0,'$ ') from Empleados;

select nombre, apellido from Empleados where datename(month, fechanacimiento)='october';

select nombre, apellido from Empleados where datepart(year, fechaingreso)=1998;

--28 - Ordenar registros (order by)
if object_id('Visitas') is not null
	drop table Visitas;

create table Visitas
(
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fecha datetime,
	primary key(numero)
)

insert into Visitas(nombre,mail,pais,fecha) values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into Visitas(nombre,mail,pais,fecha) values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
insert into Visitas(nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into Visitas(nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into Visitas(nombre,mail,pais,fecha) values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into Visitas(nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
insert into Visitas(nombre,mail,pais,fecha) values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

select* from Visitas order by fecha desc;

select nombre, pais, datename(month, fecha) from Visitas order by pais asc, fecha desc;

select pais, datename(month, fecha), datename(day, fecha), datename(hour, fecha) from Visitas order by 2,3,4;

select mail, pais from Visitas where datename(month, fecha)='october' order by pais;

--29 - Operadores lógicos ( and - or - not)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(5,2),
	cantidad tinyint,
	primary key(codigo)
)

insert into Medicamentos values('Sertal','Roche',5.2,100);
insert into Medicamentos values('Buscapina','Roche',4.10,200);
insert into Medicamentos values('Amoxidal 500','Bayer',15.60,100);
insert into Medicamentos values('Paracetamol 500','Bago',1.90,200);
insert into Medicamentos values('Bayaspirina','Bayer',2.10,150); 
insert into Medicamentos values('Amoxidal jarabe','Bayer',5.10,250);

select codigo, nombre from Medicamentos where laboratorio='Roche' and precio<5;
select* from Medicamentos where laboratorio='Roche' or precio<5;
select* from Medicamentos where not laboratorio='Bayer' and cantidad=100;
select* from Medicamentos where laboratorio='Bayer' and not cantidad=100;

delete from Medicamentos where laboratorio='Bayer' and precio>10;

update Medicamentos set cantidad=200 where laboratorio='Roche' and precio>5;
select* from Medicamentos;
delete from Medicamentos where laboratorio='Bayer' or precio<3;
select* from Medicamentos;

--30 - Otros operadores relacionales (is null)
if object_id('Peliculas') is not null
	drop table Peliculas;

create table Peliculas
(
	codigo int identity,
	titulo varchar(40) not null,
	actor varchar(20),
	duracion tinyint,
	primary key (codigo)
)

insert into Peliculas values('Mision imposible','Tom Cruise',120);
insert into Peliculas values('Harry Potter y la piedra filosofal','Daniel R.',null);
insert into Peliculas values('Harry Potter y la camara secreta','Daniel R.',190);
insert into Peliculas values('Mision imposible 2','Tom Cruise',120);
insert into Peliculas values('Mujer bonita',null,120);
insert into Peliculas values('Tootsie','D. Hoffman',90);
insert into Peliculas(titulo) values('Un oso rojo');

select* from Peliculas where actor is null;
update Peliculas set duracion=0 where duracion is null;
select* from Peliculas;

delete from Peliculas where actor is null and duracion=0; 
select* from Peliculas;

--31 - Otros operadores relacionales (between)
if object_id('Visitas') is not null
	drop table Visitas;

create table Visitas
(
	numero int identity,
	nombre varchar(30) default 'Anonimo',
	mail varchar(50),
	pais varchar (20),
	fechayhora datetime,
	primary key(numero)
)

insert into Visitas(nombre,mail,pais,fechayhora) values('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
insert into Visitas(nombre,mail,pais,fechayhora) values('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
insert into Visitas(nombre,mail,pais,fechayhora) values('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
insert into Visitas(nombre,mail,pais,fechayhora) values('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
insert into Visitas(nombre,mail,pais,fechayhora) values('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
insert into Visitas(nombre,mail,pais,fechayhora) values('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
insert into Visitas(nombre,mail,pais,fechayhora) values('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
insert into Visitas(nombre,mail,pais) values('Federico1','federicogarcia@xaxamail.com','Argentina');

select* from Visitas where fechayhora between '2006-09-12' and '2006-10-11';
select* from Visitas where numero between 2 and 5;

--32 - Otros operadores relacionales (in)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	primary key(codigo)
)

insert into Medicamentos values('Sertal','Roche',5.2,1,'2015-02-01');
insert into Medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01');
insert into Medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01');
insert into Medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01');
insert into Medicamentos values('Bayaspirina','Bayer',2.10,150,'2019-12-01'); 
insert into Medicamentos values('Amoxidal jarabe','Bayer',5.10,250,'2020-10-01'); 

select* from Medicamentos where laboratorio in('Bayer', 'Bago');
select* from Medicamentos where cantidad between 1 and 5;
select* from Medicamentos where cantidad in (1,2,3,4,5);

--33 - Búsqueda de patrones (like - not like)
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	fechaingreso datetime,
	seccion varchar(20),
	sueldo decimal(6,2),
	primary key(documento)
)

insert into Empleados values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
insert into Empleados values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
insert into Empleados values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
insert into Empleados values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
insert into Empleados values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
insert into Empleados values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
insert into Empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

select* from Empleados where nombre like '%Perez%';
select* from Empleados where domicilio like 'Co%8%';
select* from Empleados where documento like '%[02468]';
select* from Empleados where documento like '[^13]%' and nombre like '%ez';
select* from Empleados where nombre like '%[yj]%';
select nombre, seccion from Empleados where seccion like '[SG]_______';
select nombre, seccion from Empleados where seccion like '[^SG]%';
select nombre, sueldo from Empleados where sueldo not like '%.00';
select* from Empleados where datepart(year, fechaingreso) like '%1990%';

--34 - Contar registros (count)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
)

insert into Medicamentos values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into Medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into Medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into Medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into Medicamentos values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into Medicamentos values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null); 

select count(*) from Medicamentos;
select count(laboratorio) from Medicamentos;
select count(precio) as 'Con Precio', count(cantidad) as 'Con Cantidad' from Medicamentos;
select count(precio) from Medicamentos where laboratorio like 'B%';
select count(numerolote) from Medicamentos;

--35 - Contar registros (count_big)
if object_id('Medicamentos') is not null
	drop table Medicamentos;

create table Medicamentos
(
	codigo int identity,
	nombre varchar(20),
	laboratorio varchar(20),
	precio decimal(6,2),
	cantidad tinyint,
	fechavencimiento datetime not null,
	numerolote int default null,
	primary key(codigo)
)

insert into Medicamentos values('Sertal','Roche',5.2,1,'2015-02-01',null);
insert into Medicamentos values('Buscapina','Roche',4.10,3,'2016-03-01',null);
insert into Medicamentos values('Amoxidal 500','Bayer',15.60,100,'2017-05-01',null);
insert into Medicamentos values('Paracetamol 500','Bago',1.90,20,'2018-02-01',null);
insert into Medicamentos values('Bayaspirina',null,2.10,null,'2019-12-01',null); 
insert into Medicamentos values('Amoxidal jarabe','Bayer',null,250,'2019-12-15',null);

select count_big(*) from Medicamentos;
select count_big(distinct laboratorio) from Medicamentos;
select count_big(precio) as 'Con Precio', count_big(cantidad) from Medicamentos;

--36 - Funciones de agrupamiento (count - sum - min - max - avg)
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	nombre varchar(30),
	documento char(8),
	domicilio varchar(30),
	seccion varchar(20),
	sueldo decimal(6,2),
	cantidadhijos tinyint,
	primary key(documento)
)

insert into Empleados values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
insert into Empleados values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
insert into Empleados values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
insert into Empleados values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
insert into Empleados values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
insert into Empleados values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
insert into Empleados values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
insert into Empleados values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
insert into Empleados values('Andres Costa','28444555',default,'Secretaria',null,null);

select count(*) from Empleados;
select count(sueldo) from Empleados where seccion like '%Secretaria%';
select max(sueldo) as 'Sueldo mas alto', min(sueldo) as 'Sueldo mas bajo' from Empleados;
select max(cantidadhijos) as 'Mayor cantidad de hijos' from Empleados where nombre like '%Perez%';
select avg(sueldo) from Empleados;
select avg(sueldo) from Empleados where seccion like '%Secretaria%';
select avg(cantidadhijos) from Empleados where seccion like '%Sistemas%';

--37 - Agrupar registros (group by)
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	ciudad varchar(20) default 'Cordoba',
	telefono varchar(11),
	mail varchar(30) default 'no tiene',
	montocompra decimal (6,2)
)

insert into Visitantes values('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
insert into Visitantes values('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
insert into Visitantes values('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
insert into Visitantes(nombre, edad,sexo,telefono, mail) values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
insert into Visitantes(nombre, ciudad, montocompra) values ('Alejandra Gonzalez','La Falda',280.50);
insert into Visitantes(nombre, edad,sexo, ciudad, mail,montocompra) values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
insert into Visitantes values('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
insert into Visitantes values('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

select ciudad, count(*) from Visitantes group by ciudad;
select ciudad, count(telefono) from Visitantes group by ciudad;
select sexo, sum(montocompra) from Visitantes group by sexo;
select sexo, ciudad, max(montocompra) as Maximo, min(montocompra) as Minimo from Visitantes group by sexo, ciudad;
select ciudad, avg(montocompra) from Visitantes group by ciudad;
select ciudad, count(*) as 'Con mail' from Visitantes where mail is not null and mail<>'no tiene' group by ciudad;
select ciudad, count(*) as 'Con mail' from Visitantes where mail is not null and mail<>'no tiene' group by all ciudad; 

--38 - Seleccionar grupos (having)
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes
(
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	provincia varchar (20),
	telefono varchar(11),
	primary key(codigo)
)

insert into Clientes values('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
insert into Clientes values('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
insert into Clientes values('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
insert into Clientes values('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
insert into Clientes values('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
insert into Clientes values('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
insert into Clientes values('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
insert into Clientes values('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
insert into Clientes values('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
insert into Clientes values('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

select ciudad, provincia, count(*) as 'Cantidad ciudad', count(*) as 'Cantidad Provincia' from Clientes
	group by ciudad, provincia;
select ciudad, provincia, count(*) as 'Cantidad ciudad', count(*) as 'Cantidad Provincia' from Clientes
	group by ciudad, provincia having count(*)<2;
select ciudad, count(*) from Clientes where domicilio like '%San Martin%' group by all ciudad 
	having count(*)<2 and ciudad<>'Cordoba';

--39 - Modificador del group by (with rollup)
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes
(
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	estado varchar (20),
	pais varchar(20),
	primary key(codigo)
)

insert into Clientes values('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
insert into Clientes values('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
insert into Clientes values('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
insert into Clientes values('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
insert into Clientes values('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
insert into Clientes values('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
insert into Clientes values('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
insert into Clientes values('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
insert into Clientes values('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
insert into Clientes values('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
insert into Clientes values('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
insert into Clientes values('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');

select pais, count(*) as Cantidad from Clientes group by pais with rollup; 
select pais, estado, count(*) as Cantidad from Clientes group by pais, estado with rollup;
select pais, estado, ciudad, count(*) as Cantidad from Clientes group by pais, estado, ciudad with rollup;

--40 - Modificador del group by (with cube)
if object_id('Ventas') is not null
	drop table Ventas;

create table Ventas
(
	numero int identity,
	montocompra decimal(6,2),
	tipopago char(1),--c=contado, t=tarjeta
	vendedor varchar(30),
	primary key (numero)
)

insert into Ventas values(100.50,'c','Marisa Perez');
insert into Ventas values(200,'c','Marisa Perez');
insert into Ventas values(50,'t','Juan Lopez');
insert into Ventas values(220,'c','Juan Lopez');
insert into Ventas values(150,'t','Marisa Perez');
insert into Ventas values(550.80,'c','Marisa Perez');
insert into Ventas values(300,'t','Juan Lopez');
insert into Ventas values(25,'c','Marisa Perez');

select tipopago, vendedor, count(*) as Cantidad from Ventas group by tipopago, vendedor with rollup;
select tipopago, vendedor, count(*) as Cantidad from Ventas group by tipopago, vendedor with cube;

--41 - Función grouping
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados
(
	documento varchar(8) not null,
	nombre varchar(30),
	sexo char(1),
	estadocivil char(1),--c=casado, s=soltero,v=viudo
	seccion varchar(20),
	primary key (documento)
)

insert into Empleados values('22222222','Alberto Lopez','m','c','Sistemas');
insert into Empleados values('23333333','Beatriz Garcia','f','c','Administracion');
insert into Empleados values('24444444','Carlos Fuentes','m','s','Administracion');
insert into Empleados values('25555555','Daniel Garcia','m','s','Sistemas');
insert into Empleados values('26666666','Ester Juarez',null,'c','Sistemas');
insert into Empleados values('27777777','Fabian Torres',null,'s','Sistemas');
insert into Empleados values('28888888','Gabriela Lopez','f',null,'Sistemas');
insert into Empleados values('29999999','Hector Garcia','m',null,'Administracion');

select sexo, estadocivil, count(*) as Cantidad from Empleados group by sexo, estadocivil with rollup;
select sexo, estadocivil, count(*) as cantidad, grouping(sexo) as 'Resumen Sexo', grouping(estadocivil) as 
	'Resumen EstadoCivil' from Empleados group by sexo, estadocivil with rollup;
select sexo, estadocivil, count(*) as cantidad, grouping(sexo) as 'Resumen Sexo', grouping(estadocivil) as 
	'Resumen EstadoCivil' from Empleados group by sexo, estadocivil with cube;

--42 - Cláusulas compute y compute by
if object_id('Inmuebles') is not null
	drop table Inmuebles;

create table Inmuebles
(
	documento varchar(8) not null,
	nombre varchar(30),
	domicilio varchar(20),
	barrio varchar(20),
	ciudad varchar(20),
	tipo char(1),--b=baldio, e: edificado
	superficie decimal (8,2),
	monto decimal (8,2)
)

insert into Inmuebles values('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
insert into Inmuebles values('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
insert into Inmuebles values('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
insert into Inmuebles values('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
insert into Inmuebles values('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
insert into Inmuebles values('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
insert into Inmuebles values('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
insert into Inmuebles values('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

select *from inmuebles compute avg(monto);
select *from inmuebles compute avg(superficie),sum(monto);
select *from inmuebles order by documento,barrio,ciudad compute avg(superficie),sum(monto)
	by documento,barrio,ciudad;
select *from inmuebles order by documento,barrio,ciudad compute avg(superficie),sum(monto)
	by documento,barrio;
select *from inmuebles order by documento,barrio,ciudad compute avg(superficie),sum(monto)
	by documento;
select *from inmuebles order by documento,barrio,ciudad compute avg(superficie),sum(monto)
	by documento,ciudad;
select *from inmuebles order by documento compute sum(monto) compute avg(monto) by documento;

--43 - Registros duplicados (distinct)
if object_id('Clientes') is not null
	drop table Clientes;

create table Clientes
(
	codigo int identity,
	nombre varchar(30) not null,
	domicilio varchar(30),
	ciudad varchar(20),
	provincia varchar (20),
	primary key(codigo)
)

insert into Clientes values('Lopez Marcos','Colon 111','Cordoba','Cordoba');
insert into Clientes values('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
insert into Clientes values('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
insert into Clientes values('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
insert into Clientes values('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
insert into Clientes values('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
insert into Clientes values('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
insert into Clientes values('Lopez Carlos',null,'Cruz del Eje','Cordoba');
insert into Clientes values('Ramos Betina','San Martin 999','Cordoba','Cordoba');
insert into Clientes values('Lopez Lucas','San Martin 1010','Posadas','Misiones');

select distinct provincia from Clientes;
select count(distinct provincia) from Clientes;
select distinct ciudad from Clientes;
select count(distinct ciudad) from Clientes;
select distinct ciudad from Clientes where provincia='Cordoba';
select provincia, count(distinct ciudad) as Cantidad from Clientes group by provincia;

--44 - Cláusula top
if object_id('Empleados') is not null
drop table Empleados;

create table Empleados 
(
	documento varchar(8) not null,
	nombre varchar(30),
	estadocivil char(1),--c=casado, s=soltero,v=viudo
	seccion varchar(20)
)

insert into Empleados values('22222222','Alberto Lopez','c','Sistemas');
insert into Empleados values('23333333','Beatriz Garcia','c','Administracion');
insert into Empleados values('24444444','Carlos Fuentes','s','Administracion');
insert into Empleados values('25555555','Daniel Garcia','s','Sistemas');
insert into Empleados values('26666666','Ester Juarez','c','Sistemas');
insert into Empleados values('27777777','Fabian Torres','s','Sistemas');
insert into Empleados values('28888888','Gabriela Lopez',null,'Sistemas');
insert into Empleados values('29999999','Hector Garcia',null,'Administracion');

select top 5* from Empleados;
select top 4 nombre, seccion from Empleados order by seccion;
select top 4 with ties nombre, seccion from Empleados order by seccion;
select top 4 nombre, estadocivil, seccion from Empleados order by estadocivil, seccion;
select top 4 with ties nombre, estadocivil, seccion from Empleados order by estadocivil, seccion;

--45 - Clave primaria compuesta
if object_id('Consultas') is not null
	drop table Consultas;

create table Consultas
(
	fechayhora datetime not null,
	medico varchar(30) not null,
	documento char(8) not null,
	paciente varchar(30),
	obrasocial varchar(30),
	primary key(fechayhora,medico)
)

insert into consultas values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
insert into consultas values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');

insert into consultas values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
insert into consultas values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');

insert into consultas values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

--47 - Restricción default
if object_id('Visitantes') is not null
	drop table Visitantes;

create table Visitantes
(
	numero int identity,
	nombre varchar(30),
	edad tinyint,
	domicilio varchar(30),
	ciudad varchar(20),
	montocompra decimal (6,2) not null
)

alter table Visitantes
add constraint DF_Visitantes_ciudad
default 'Cordoba'
for ciudad;

alter table Visitantes
add constraint DF_Visitantes_montocompra
default 0
for montocompra;

insert into Visitantes values('Susana Molina',35,'Colon 123',default,59.80);
insert into Visitantes(nombre,edad,domicilio) values('Marcos Torres',29,'Carlos Paz');
insert into Visitantes values('Mariana Juarez',45,'Carlos Paz',null,23.90);

select* from Visitantes;

exec sp_helpconstraint Visitantes;

alter table Visitantes
add constraint DF_Visitantes_ciudad
default 'Santiago'
for ciudad;

alter table Visitantes
add constraint DF_Visitantes_numero
default 0
for numero;

--48 - Restricción check
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados 
(
	documento varchar(8),
	nombre varchar(30),
	fechanacimiento datetime,
	cantidadhijos tinyint,
	seccion varchar(20),
	sueldo decimal(6,2)
)

alter table Empleados
add constraint CK_Empleados_sueldo_positivo
check(sueldo>0);

insert into Empleados values('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
insert into Empleados values('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
insert into Empleados values('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

alter table Empleados
add constraint CK_Empleados_sueldo_maximo
check(sueldo<=5000);

delete from Empleados where sueldo=6000;

alter table Empleados
add constraint CK_Empleados_fechanacimiento
check(fechanacimiento<getdate());

alter table Empleados
add constraint CK_Empleados_seccion_lista
check (seccion in ('Sistemas','Administracion','Contaduria'));

alter table Empleados
add constraint CK_Empleados_cantidadhijos
check(cantidadhijos between 0 and 15);

exec sp_helpconstraint Empleados;

insert into Empleados values('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',30000);
insert into Empleados values('33333333','Beatriz Garcia','2072/08/15',2,'Administracion',30000);

update Empleados set cantidadhijos=21 where documento='22222222';
update Empleados set seccion='Recursos' where documento='22222222';

alter table Empleados
add constraint CK_seccion_letrainicial
check(seccion like '%B');

--49 - Deshabilitar restricciones (with check - nocheck)
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados 
(
	documento varchar(8),
	nombre varchar(30),
	seccion varchar(20),
	sueldo decimal(6,2)
)

insert into Empleados values('22222222','Alberto Acosta','Sistemas',-10);
insert into Empleados values('33333333','Beatriz Benitez','Recursos',3000);
insert into Empleados values('34444444','Carlos Caseres','Contaduria',4000);

alter table Empleados
add constraint CK_Empleados_sueldo_positivo
check(sueldo>=0);

alter table Empleados
with nocheck add constraint CK_Empleados_sueldo_positivo
check(sueldo>=0);

insert into Empleados values('35555555','Daniel Duarte','Administracion',-2000);

alter table Empleados
nocheck constraint CK_Empleados_sueldo_positivo;

insert into Empleados values('35555555','Daniel Duarte','Administracion',-2000);

alter table Empleados
add constraint CK_Empleados_seccion_lista
check(seccion in ('Sistemas','Administracion','Contaduria'));

alter table Empleados
with nocheck add constraint CK_Empleados_seccion_lista
check(seccion in ('Sistemas','Administracion','Contaduria'));

exec sp_helpconstraint Empleados;

alter table Empleados
check constraint CK_Empleados_sueldo_positivo;

update Empleados set seccion='Recursos' where nombre='Carlos Caseres';

alter table Empleados
nocheck constraint CK_Empleados_seccion_lista;

update Empleados set seccion='Recursos' where nombre='Carlos Caseres';

--50 - Restricción primary key
if object_id('Empleados') is not null
	drop table Empleados;

create table Empleados 
(
	documento varchar(8) not null,
	nombre varchar(30),
	seccion varchar(20)
)

insert into Empleados values('22222222','Alberto Lopez','Sistemas');
insert into Empleados values('23333333','Beatriz Garcia','Administracion');
insert into Empleados values('23333333','Carlos Fuentes','Administracion');

alter table Empleados
add constraint PK_Empleados_documento
primary key(documento);

delete from Empleados where nombre='Carlos Fuentes';

alter table Empleados
add constraint PK_Empleados_documento
primary key(documento);

update Empleados set documento='22222222' where documento='23333333';

alter table Empleados
add constraint PK_Empleados_nombre
primary key(nombre);

insert into Empleados values(null,'Marcelo Juarez','Sistemas');

alter table Empleados
add constraint DF_Empleados_documento
default '00000000'
for documento;

insert into Empleados(nombre,seccion) values('Luis Luque','Sistemas'); 

select* from Empleados;

insert into Empleados(nombre,seccion) values('Ana Fuentes','Sistemas'); 

exec sp_helpconstraint Empleados;

--51 - Restricción unique
if object_id('Remis') is not null
	drop table Remis;

create table Remis
(
	numero tinyint identity,
	patente char(6),
	marca varchar(15),
	modelo char(4)
)

insert into Remis values('ABC123','Renault clio','1990');
insert into Remis values('DEF456','Peugeot 504','1995');
insert into Remis values('DEF456','Fiat Duna','1998');
insert into Remis values('GHI789','Fiat Duna','1995');
insert into Remis values(null,'Fiat Duna','1995');

alter table Remis
add constraint UQ_Remis_patente
unique(patente); 

delete from Remis where numero=3;

alter table Remis
add constraint UQ_Remis_patente
unique(patente); 

insert into Remis values('ABC123','Renault 11','1995');
insert into Remis values(null,'Renault 11','1995');

exec sp_helpconstraint Remis;

--53 - Eliminar restricciones (alter table - drop)
if object_id('Vehiculos') is not null
	drop table Vehiculos;

create table Vehiculos
(
	patente char(6) not null,
	tipo char(1),--'a'=auto, 'm'=moto
	horallegada datetime not null,
	horasalida datetime
)

alter table Vehiculos
add constraint CK_Vehiculos_tipo
check(tipo in('a','m'));

alter table Vehiculos
add constraint DF_Vehiculos_tipo
default 'a'
for tipo;

alter table Vehiculos
add constraint CK_Vehiculos_patente_patron
check(patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

alter table Vehiculos
add constraint PK_Vehiculos_patentellegada
primary key(patente,horallegada);

insert into Vehiculos values('SDR456','a','2005/10/10 10:10',null);
insert into Vehiculos values('SDR456','m','2005/10/10 10:10',null);
insert into Vehiculos values('SDR456','m','2005/10/10 12:10',null);
insert into Vehiculos values('SDR111','m','2005/10/10 10:10',null);

exec sp_helpconstraint Vehiculos;

alter table Vehiculos 
drop DF_Vehiculos_tipo;

exec sp_helpconstraint Vehiculos;

alter table Vehiculos 
drop PK_Vehiculos_patentellegada, CK_Vehiculos_tipo;

exec sp_helpconstraint Vehiculos;

--54 - Crear y asociar reglas (create rule - sp_bindrule)
if object_id('Vehiculos') is not null
	drop table Vehiculos;

if object_id('RG_patente_patron') is not null
	drop rule RG_patente_patron;
if object_id('RG_horallegada') is not null
   drop rule RG_horallegada;
if object_id('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
if object_id('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;
if object_id('RG_menor_fechaactual') is not null
   drop rule RG_menor_fechaactual;

create table Vehiculos
(
	patente char(6) not null,
	tipo char(1),--'a'=auto, 'm'=moto
	horallegada datetime not null,
	horasalida datetime
)

insert into Vehiculos values('AAA111','a','1990-02-01 08:10',null);
insert into Vehiculos values('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
insert into Vehiculos values('BCD222','m','1990-02-01 12:00',null);
insert into Vehiculos values('CC1234','a','1990-02-01 12:00',null);

create rule RG_patente_patron as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

exec sp_help;
exec sp_helpconstraint Vehiculos;
exec sp_bindrule RG_patente_patron,'vehiculos.patente';

select* from empleados;

insert into Vehiculos values('FGHIJK','a','1990-02-01 18:00',null);

create rule RG_Vehiculos_tipo as @tipo in ('a','m');

exec sp_bindrule RG_Vehiculos_tipo, 'vehiculos.tipo';

update Vehiculos set tipo='c' where patente='AAA111';

create rule RG_Vehiculos_tipo2 as @tipo in ('a','c','m');

exec sp_bindrule RG_Vehiculos_tipo2, 'vehiculos.tipo';

update Vehiculos set tipo='c' where patente='AAA111';

create rule RG_menor_fechaactual as @fecha <= getdate();

exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

insert into Vehiculos values('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

alter table Vehiculos
add constraint CK_Vehiculos_llegada_salida
check(horallegada<=horasalida);

delete from Vehiculos where patente='NOP555';

alter table Vehiculos
add constraint CK_Vehiculos_llegada_salida
check(horallegada<=horasalida);

alter table Vehiculos
add constraint DF_Vehiculos_tipo
default 'b'
for tipo;

insert into Vehiculos values('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

exec sp_helpconstraint Vehiculos;

--55 - Eliminar y dasasociar reglas (sp_unbindrule - drop rule)
if object_id('vehiculos') is not null
  drop table vehiculos;

if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;

create table vehiculos
(
	patente char(6) not null,
	tipo char(1),--'a'=auto, 'm'=moto
	horallegada datetime not null,
	horasalida datetime
)

create rule RG_patente_patron as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

exec sp_bindrule RG_patente_patron,'vehiculos.patente';

insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

create rule RG_vehiculos_tipo as @tipo in ('a','m');

exec sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

create rule RG_vehiculos_tipo2 as @tipo in ('a','c','m');

exec sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

drop rule RG_vehiculos_tipo2;
drop rule RG_vehiculos_tipo;
drop rule RG_patente_patron;

exec sp_unbindrule 'vehiculos.patente';
exec sp_helpconstraint vehiculos;
exec sp_help;

drop rule RG_patente_patron;

exec sp_help;

--64 - Eliminar índices
if object_id('alumnos') is not null
	drop table alumnos;

create table alumnos
(
	legajo char(5) not null,
	documento char(8) not null,
	apellido varchar(30),
	nombre varchar(30),
	notafinal decimal(4,2)
)

create nonclustered index I_alumnos_apellido
	on alumnos(apellido);

alter table alumnos
add constraint PK_alumnos_legajo
primary key clustered (legajo);

exec sp_helpindex alumnos;

drop index PK_alumnos_legajo;
drop index I_alumnos_apellido;
drop index alumnos.I_alumnos_apellido;

exec sp_helpindex alumnos;

if exists(select name from sysindexes where name = 'I_alumnos_apellido')
    drop index alumnos.I_alumnos_apellido;

alter table alumnos
	drop PK_alumnos_legajo;

exec sp_helpindex alumnos;

--66 - Combinación interna (inner join)
if (object_id('clientes')) is not null
	drop table clientes;
if (object_id('provincias')) is not null
	drop table provincias;

create table clientes 
(
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
)

create table provincias
(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
)

insert into provincias(nombre) values('Cordoba');
insert into provincias(nombre) values('Santa Fe');
insert into provincias(nombre) values('Corrientes');
insert into clientes values('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
insert into clientes values('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values('Torres Fabiola','Alem 777','Ibera',3);

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo;

select c.nombre,domicilio,ciudad,p.nombre
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo
order by p.nombre;

select c.nombre,domicilio,ciudad
from clientes as c
join provincias as p
on c.codigoprovincia=p.codigo
where p.nombre='Santa Fe';

--67 - Combinación externa izquierda (left join)
if(object_id('clientes')) is not null
	drop table clientes;
if(object_id('provincias')) is not null
	drop table provincias;

create table clientes 
(
	codigo int identity,
	nombre varchar(30),
	domicilio varchar(30),
	ciudad varchar(20),
	codigoprovincia tinyint not null,
	primary key(codigo)
)

create table provincias
(
	codigo tinyint identity,
	nombre varchar(20),
	primary key (codigo)
)

insert into provincias (nombre) values('Cordoba');
insert into provincias (nombre) values('Santa Fe');
insert into provincias (nombre) values('Corrientes');
insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from provincias as p
left join clientes as c
on codigoprovincia = p.codigo;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is not null;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.codigo is null
order by c.nombre;

select c.nombre,domicilio,ciudad, p.nombre
from clientes as c
left join provincias as p
on codigoprovincia = p.codigo
where p.nombre='Cordoba';

--70 - Combinaciones cruzadas (cross join)
if object_id('mujeres') is not null
	drop table mujeres;
if object_id('varones') is not null
	drop table varones;

create table mujeres
(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
)

create table varones
(
	nombre varchar(30),
	domicilio varchar(30),
	edad int
)

insert into mujeres values('Maria Lopez','Colon 123',45);
insert into mujeres values('Liliana Garcia','Sucre 456',35);
insert into mujeres values('Susana Lopez','Avellaneda 98',41);
insert into varones values('Juan Torres','Sarmiento 755',44);
insert into varones values('Marcelo Oliva','San Martin 874',56);
insert into varones values('Federico Pereyra','Colon 234',38);
insert into varones values('Juan Garcia','Peru 333',50);

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v
where m.edad>40 and v.edad>40;

select m.nombre,m.edad,v.nombre,v.edad
from mujeres as m
cross join varones as v 
where m.edad-v.edad between -10 and 10;

--71 - Autocombinación
if object_id('clientes') is not null
	drop table clientes;

create table clientes
(
	nombre varchar(30),
	sexo char(1),--'f'=femenino, 'm'=masculino
	edad int,
	domicilio varchar(30)
)

insert into clientes values('Maria Lopez','f',45,'Colon 123');
insert into clientes values('Liliana Garcia','f',35,'Sucre 456');
insert into clientes values('Susana Lopez','f',41,'Avellaneda 98');
insert into clientes values('Juan Torres','m',44,'Sarmiento 755');
insert into clientes values('Marcelo Oliva','m',56,'San Martin 874');
insert into clientes values('Federico Pereyra','m',38,'Colon 234');
insert into clientes values('Juan Garcia','m',50,'Peru 333');

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
cross join clientes cv
where cm.sexo='f' and cv.sexo='m';

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
join clientes cv
on cm.nombre<>cv.nombre
where cm.sexo='f' and cv.sexo='m';

select cm.nombre,cm.edad,cv.nombre,cv.edad
from clientes as cm
cross join clientes cv
where cm.sexo='f' and cv.sexo='m' and
cm.edad-cv.edad between -5 and 5;

--72 - Combinaciones y funciones de agrupamiento
if object_id('visitantes') is not null
	drop table visitantes;
if object_id('ciudades') is not null
	drop table ciudades;

create table visitantes
(
	nombre varchar(30),
	edad tinyint,
	sexo char(1) default 'f',
	domicilio varchar(30),
	codigociudad tinyint not null,
	mail varchar(30),
	montocompra decimal (6,2)
)

create table ciudades
(
	codigo tinyint identity,
	nombre varchar(20)
)
 
insert into ciudades values('Cordoba');
insert into ciudades values('Carlos Paz');
insert into ciudades values('La Falda');
insert into ciudades values('Cruz del Eje');
insert into visitantes values('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
insert into visitantes values('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
insert into visitantes values('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
insert into visitantes values('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
insert into visitantes values('Alejandra Garcia',28,'f',null,2,null,280.50);
insert into visitantes values('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
insert into visitantes values('Mariana Juarez',33,'f',null,2,null,90);

select c.nombre,
count(*) as cantidad
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre;

select c.nombre,sexo,
avg(montocompra) as 'promedio de compra'
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre,sexo;

select c.nombre,
count(mail) as 'tienen mail'
from ciudades as c
join visitantes as v
on codigociudad=c.codigo
group by c.nombre;

select c.nombre,
max(montocompra)
from visitantes as v
join ciudades as c
on codigociudad=c.codigo
group by c.nombre;

