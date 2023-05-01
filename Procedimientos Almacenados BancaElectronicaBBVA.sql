/*Procedimientos Almacenados*/
/*Isai Subuyuj*/
USE BancaElectronicaBBVA;

DROP PROCEDURE venderProducto; 

/*+++++++++++++++++++++++++++++++++++++++++++++++++Compañia_Telefonica+++++++++++++++++++++++++++++++++++++++++++++++++++*/
DELIMITER $$
CREATE PROCEDURE NuevaCompañia_Telefonica(in _NTelefono bigint, in _Compañia varchar(20))
BEGIN

	INSERT INTO Compañia_Telefonica(NTelefono, Compañia)
	VALUES(_NTelefono, _Compañia);
    
END$$
DELIMITER ;

CALL NuevaCompañia_Telefonica(991136745, 'Telcel');
SELECT * FROM Compañia_Telefonica;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarCompañia_Telefonica(in _NTelefono bigint, in _Compañia varchar(20))
BEGIN 
	UPDATE Compañia_Telefonica set Compañia = _Compañia WHERE NTelefono = _NTelefono;
    
END$$
DELIMITER ;

CALL actualizarCompañia_Telefonica(991136745, 'Red');

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarCompañia_Telefonica(in _NTelefono bigint)
BEGIN
	DELETE FROM Compañia_Telefonica WHERE NTelefono = _NTelefono;
END $$
DELIMITER ;

CALL EliminarCompañia_Telefonica(991136745);

/*+++++++++++++++++++++++++++++++++++++++++++++++Identificacion+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevaIdentificacion(in _nIdentificacion bigint, 
				in _TipoIndentificacion varchar(30), 
				in _FechaTramitado date)
BEGIN

	INSERT INTO Identificacion(nIdentificacion, TipoIndentificacion, FechaTramitado)
	VALUES(_nIdentificacion,_TipoIndentificacion, _FechaTramitado);
    
END$$
DELIMITER ;
CALL NuevaIdentificacion(9927482540101, 'DPI Guatemala', '2001-11-09');
SELECT * FROM Identificacion;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarIdentificacion(in _nIdentificacion bigint, in _TipoIndentificacion varchar(30), in _FechaTramitado date)

BEGIN 
	UPDATE Identificacion set TipoIndentificacion = _TipoIndentificacion, FechaTramitado = _FechaTramitado
    WHERE nIdentificacion = _nIdentificacion;
    
END$$
DELIMITER ;

CALL actualizarIdentificacion(9927482540101, 'DPI Guatemala', '2001-10-15');

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarIdentificacion(in _nIdentificacion bigint)
BEGIN
	DELETE FROM Identificacion WHERE nIdentificacion = _nIdentificacion;
END $$
DELIMITER ;

CALL EliminarIdentificacion(9927482540101);


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++Moneda++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevaMoneda(in _TipoMoneda varchar(15))
BEGIN

	INSERT INTO Moneda(TipoMoneda)
	VALUES(_TipoMoneda);
    
END$$
DELIMITER ;
CALL NuevaMoneda('Yuan');
SELECT * FROM Moneda;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarMoneda(in _TipoMoneda varchar(15), in _IDMoneda int)

BEGIN 
	UPDATE Moneda set TipoMoneda = _TipoMoneda
    WHERE IDMoneda = _IDMoneda;
    
END$$
DELIMITER ;

CALL actualizarMoneda('Real', 4);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarMoneda(in _IDMoneda int)
BEGIN
	DELETE FROM Moneda WHERE IDMoneda = _IDMoneda;
END $$
DELIMITER ;

CALL EliminarMoneda(4);

/*+++++++++++++++++++++++++++++++++++++++++++++++++++++Tipo De Cuenta+++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevoTipoDeCuenta(in _TipoCuenta varchar(20))
BEGIN

	INSERT INTO TipoDeCuenta(TipoCuenta)
	VALUES(_TipoCuenta);
    
END$$
DELIMITER ;
CALL NuevoTipoDeCuenta('fondo de pensión');
SELECT * FROM TipoDeCuenta;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarTipoDeCuenta(in _TipoCuenta varchar(20), in _IDTipoM int)

BEGIN 
	UPDATE TipoDeCuenta set TipoCuenta = _TipoCuenta WHERE IDTipoM = _IDTipoM;
    
END$$
DELIMITER ;

CALL actualizarTipoDeCuenta('Inversion', 4);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarTipoDeCuenta(in _IDTipoM int)
BEGIN
	DELETE FROM TipoDeCuenta WHERE IDTipoM = _IDTipoM;
END $$
DELIMITER ;

CALL EliminarTipoDeCuenta(4);

/*+++++++++++++++++++++++++++++++++++++++++++++Proveedores De Servicio+++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevoProveedor(in _NombreProvee Varchar(40), 
				in _IdentificadorPago bigint)
BEGIN

	INSERT INTO Proveedores(NombreProvee, IdentificadorPago)
	VALUES(_NombreProvee, _IdentificadorPago);
    
END$$
DELIMITER ; 
CALL NuevoProveedor('Cable Color', 402909);
SELECT * FROM Proveedores;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarProveedores(in _NombreProvee Varchar(40), in _IdentificadorPago bigint, in _IDProvee int)

BEGIN 
	UPDATE Proveedores set NombreProvee = _NombreProvee, IdentificadorPago = _IdentificadorPago
    WHERE IDProvee = _IDProvee;
    
END$$
DELIMITER ;

CALL actualizarProveedores('Tigo Sports', 402909, 5);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarProveedores(in _IDProvee int)
BEGIN
	DELETE FROM Proveedores WHERE IDProvee = _IDProvee;
END $$
DELIMITER ;

CALL EliminarProveedores(5);

/*+++++++++++++++++++++++++++++++++++++++++++++Cliente+++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevoCliente(in _CodigoCliente INT, in _NombresC varchar(45), in _ApellidosC varchar(45),
				in _DireccionC varchar(60), in _TelefonoC bigint, in _CorreoElecC varchar(30),
				in _Nacinalidad varchar(15), in _IdentificacionC bigint)
BEGIN

	INSERT INTO Cliente(CodigoCliente, NombresC, ApellidosC, DireccionC, TelefonoC, CorreoElecC, Nacinalidad, IdentificacionC)
	VALUES(_CodigoCliente, _NombresC, _ApellidosC, _DireccionC, _TelefonoC, _CorreoElecC, _Nacinalidad, _IdentificacionC);
    
END$$
DELIMITER ;
 
CALL NuevoCliente(3006, 'Damian Javier', 'Rozo Juarez', '6ta A. 5-55 Castillo', 991136745, 
					'DJ@gmail.com', 'Guatemalteca', 9927482540101);
SELECT * FROM Cliente;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarCliente(in _CodigoCliente INT, in _NombresC varchar(45), in _ApellidosC varchar(45),
				in _DireccionC varchar(60), in _TelefonoC bigint, in _CorreoElecC varchar(30),
				in _Nacinalidad varchar(15), in _IdentificacionC bigint)

BEGIN 
	UPDATE Proveedores set NombresC = _NombresC, ApellidosC = _ApellidosC, DireccionC = _DireccionC, TelefonoC = _TelefonoC,
			CorreoElecC = _CorreoElecC, Nacinalidad =  _Nacinalidad, IdentificacionC = _IdentificacionC WHERE CodigoCliente = _CodigoCliente;
    
END$$
DELIMITER ;

CALL actualizarCliente('Damian Javier', 'Rozo Juarez', '6ta A. 5-55 Castillo', 991136745, 'DamianJ@gmail.com', 'Guatemalteca', 9927482540101, 3006);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarCliente(in _CodigoCliente INT)
BEGIN
	DELETE FROM Cliente WHERE CodigoCliente = _CodigoCliente;
END $$
DELIMITER ;

CALL EliminarCliente(3006);

/*+++++++++++++++++++++++++++++++++++++++++++Usuario+++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevoUsuario(in _NombreUsuario varchar(15), in _Contraseña int, 
								in _Estado varchar(25), in _FechaCreacion date, in _CodigoC INT)
BEGIN

	INSERT INTO Usuario(NombreUsuario, Contraseña, Estado, FechaCreacion, CodigoC)
	VALUES(_NombreUsuario, _Contraseña, _Estado, _FechaCreacion, _CodigoC);
    
END$$
DELIMITER ;

CALL NuevoUsuario('Damian Rozo', 1639, 'Activo', '2005-02-09', 3006);
SELECT * FROM Usuario;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizaroUsuario(in _NombreUsuario varchar(15), in _Contraseña int, 
							in _Estado varchar(25), in _FechaCreacion date, 
							in _CodigoC INT, in _NumUsuario int)

BEGIN 
	UPDATE Usuario set NombreUsuario = _NombreUsuario, Contraseña = _Contraseña, 
    Estado = _Estado, FechaCreacion = _FechaCreacion,
    CodigoC = _CodigoC WHERE NumUsuario = _NumUsuario;
    
END$$
DELIMITER ;

CALL NuevoUsuario('Damian Rozo', 1639, 'Activo', '2005-03-09', 3006);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarUsuario(in _NumUsuario int)
BEGIN
	DELETE FROM Usuario WHERE NumUsuario = _NumUsuario;
END $$
DELIMITER ;

CALL EliminarUsuario(6);

/*++++++++++++++++++++++++++++++++++++++++++++Pago++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevoPago(in _FechaPago date, in _CantidadAPagar bigint, in _TipodePago varchar(35),
				in _UsuarioID int, in _IDProvee int)
BEGIN

	INSERT INTO Pago(FechaPago, CantidadAPagar, TipodePago, UsuarioID, IDProvee)
	VALUES(_FechaPago, _CantidadAPagar, _TipodePago, _UsuarioID, _IDProvee);
    
END$$
DELIMITER ;
 
CALL NuevoPago('2021-09-15', 2000, 'Por servicio de Cable', 2, 3);

SELECT * FROM Pago;
	
/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarPago(in _IDPagos	int, in _FechaPago date, in _CantidadAPagar bigint, 
								in _TipodePago varchar(35), in _UsuarioID int, in _IDProvee int)

BEGIN 
	UPDATE Pago set FechaPago = _FechaPago, CantidadAPagar = _CantidadAPagar, TipodePago = _TipodePago, UsuarioID = _UsuarioID,
    IDProvee = _IDProvee WHERE IDPagos = _IDPagos;
    
END$$
DELIMITER ;

CALL actualizarPago(5, '2021-09-16', 2000, 'Servicio de Cable', 6, 5);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarPago(in _IDPagos	int)
BEGIN
	DELETE FROM Pago WHERE IDPagos = _IDPagos;
END $$
DELIMITER ;

CALL EliminarPago(8);

/*+++++++++++++++++++++++++++++++++++++++++++Cuenta+++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE NuevaCuenta(in _IDTipo int, in _IDMoneda int, 
							in _Saldo bigint, in _IDUsuario INT)
BEGIN

	INSERT INTO Cuenta(IDTipo, IDMoneda, Saldo, IDUsuario)
	VALUES(_IDTipo, _IDMoneda, _Saldo, _IDUsuario);
    
END$$
DELIMITER ;


CALL NuevaCuenta(4, 4, '15000', 6);
SELECT * FROM Cuenta;

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE actualizarCuenta(in _IDTipo int, in _IDMoneda int, in _Saldo bigint, 
								in _IDUsuario INT, in _NumCuenta int)

BEGIN 
	UPDATE Cuenta set IDTipo = _IDTipo, IDMoneda = _IDMoneda, 
    Saldo = _Saldo, IDUsuario = _IDUsuario WHERE NumCuenta = _NumCuenta;
    
END$$
DELIMITER ;

CALL actualizarCuenta(4, 4, '14000', 6, 6);

/*++++++++++++++++++++++*/

DELIMITER $$
CREATE PROCEDURE EliminarCuenta(in _NumCuenta int)
BEGIN
	DELETE FROM Cuenta WHERE NumCuenta = _NumCuenta;
END $$
DELIMITER ;

CALL EliminarCuenta(6);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
