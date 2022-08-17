--create database Empresa
--go
--use Empresa
--go
--Create table Cliente 
--(IdCliente int primary key,
--nombre varchar(80),
--estado varchar (80))
--go

--create table Producto
--(
--IdProducto int primary key,
--nombre_producto varchar(80),
--precio money,
--)
--go

--create table Orden
--(
--IdOrden int primary key,
--IdCliente int,
--fecha date,
--)
--go

--create table Detalle_Orden
--(
--IdOrden int,
--IdProducto int,
--Cantidad int,
--Precio_venta money,
--)
--go
--Realcion cliente - detalle_orden
--Alter table Orden
--add foreign key (IdCliente)
--references Cliente(IdCliente)
----Relacion producto - Detalle_orden
--Alter table Detalle_Orden
--add foreign key (IdProducto)
--references Producto(IdProducto)
----Realacion orden - detalle_orden
--Alter table Detalle_Orden
--add foreign key (IdOrden)
--references Orden(IdOrden)
----Se establece que las keys no pueden ser null
--alter table Detalle_Orden
--alter column IdOrden int not null
--alter table Detalle_Orden
--alter column IdProducto int not null

 --creacion de clave compuesta
alter table Detalle_Orden
add primary key(IdOrden, IdProducto)
