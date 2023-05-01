/*DML*/
/*Isai Subuyuj*/
USE BancaElectronicaBBVA;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Compañia_Telefonica*/
insert into Compañia_Telefonica(NTelefono, Compañia)
values (20479351, 'Tigo');
insert into Compañia_Telefonica(NTelefono, Compañia)
values (94785630, 'Claro');
insert into Compañia_Telefonica(NTelefono, Compañia)
values (35792461, 'Claro');
insert into Compañia_Telefonica(NTelefono, Compañia)
values (98537210, 'Pillofon');
insert into Compañia_Telefonica(NTelefono, Compañia)
values (30928461, 'tigo');

select * from Compañia_Telefonica;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Identificacion*/
insert into Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
values (2021346980101, 'DPI Guatemala', '2000-07-21');
insert into Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
values (9937486730101, 'DPI Guatemala', '1996-12-15');
insert into Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
values (67531638, 'Pasaporte USA', '1999-01-17');
insert into Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
values (17934812, 'Pasaporte USA', '1999-12-23');
insert into Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
values (57873584150101, 'DPI Guatemala', '2010-08-10');

select * from Identificacion;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Moneda*/
insert into Moneda(TipoMoneda)
values ('Quetzal');
insert into Moneda(TipoMoneda)
values ('Dolar');
insert into Moneda(TipoMoneda)
values ('Euro');

select * from Moneda;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*TipoDeCuenta*/
insert into TipoDeCuenta(TipoCuenta)
values ('Ahorros');
insert into TipoDeCuenta(TipoCuenta)
values ('Debito');
insert into TipoDeCuenta(TipoCuenta)
values ('Credito');

select * from TipoDeCuenta;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Proveedores*/
insert into Proveedores(NombreProvee, IdentificadorPago)
values ('Kinal', 202509);
insert into Proveedores(NombreProvee, IdentificadorPago)
values ('Radioshack', 304209);
insert into Proveedores(NombreProvee, IdentificadorPago)
values ('Compartamos S.A.', 107509);
insert into Proveedores(NombreProvee, IdentificadorPago)
values ('Empagua', 151509);

select * from Proveedores;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Cliente*/
insert into Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
values (3001, 'Jose David', 'Guzman Aranza', '4ta A. 3-55 Nimajuyu', 20479351, 'JG@gmail.com', 'Guatemalteca', 2021346980101);
insert into Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
values (3002, 'Karen Jimena', 'Reyes', '6ta A. 9-04 Tamarindos', 94785630, 'KR@gmail.com',	'Guatemalteca', 9937486730101);
insert into Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
values (3003, 'Stefanie Alessandra', 'Ochoa Perez', '9na A. 80.20 Cayala', 35792461, 'TefaO@gmail.com',	'Estadounidence', 67531638);
insert into Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
values (3004, 'Isai Alejandro', 'Subuyuj Garcia', '6ta A. 3-30 Guajitos', 98537210, 'Subisai@hotmail.com', 'Estadounidence', 17934812);
insert into Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
values (3005, 'Sharon Anahi', 'Ramirez Hernandez', '8va A 8-15 Villa Nueva', 30928461, 'SH@gmail.com', 'Guatemalteca', 57873584150101);

select * from Cliente;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Usuario*/
insert into Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
values ('David Guzman', 1543, 'Activo', '2009-07-05', 3001);
insert into Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
values ('Karen Reyes', 9684, 'Activo', '2009-09-25', 3002);
insert into Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
values ('Stefanie Ochoa', 8756, 'Activo', '2009-12-12', 3003);
insert into Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
values ('Isai Subuyuj', 9089, 'Activo', '2010-04-07', 3004);
insert into Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
values ('Sharon Ramirez', 2413, 'Inactivo', '2010-07-18', 3005);

select * from Usuario;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Pago*/
insert into Pago(FechaPago, CantidadAPagar, TipodePago, UsuarioID, IDProvee)
values ('2021-09-01', 1200, 'Colegiatura', 1, 1);
insert into Pago(FechaPago, CantidadAPagar, TipodePago, UsuarioID, IDProvee)
values ('2021-09-02', 1500, 'Abono', 1, 2);
insert into Pago(FechaPago, CantidadAPagar, TipodePago, UsuarioID, IDProvee)
values ('2021-09-15', 800, 'abono', 2, 3);
insert into Pago(FechaPago, CantidadAPagar, TipodePago, UsuarioID, IDProvee)
values ('2021-09-16', 150, 'Pago', 3, 4);

Select FechaPago, UsuarioID, TipodePago, CantidadAPagar from Pago;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Cuenta*/
insert into Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
Values (1, 1, 1700, 1);
insert into Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
Values (1, 1, 9000, 2);
insert into Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
Values (2, 2, 4000, 3);
insert into Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
Values (2, 2, 12000, 4);
insert into Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
Values (3, 3, 7500, 5);

select * from Cuenta;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

