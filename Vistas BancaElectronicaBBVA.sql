/*Vistas*/
/*Isai Subuyuj*/
USE BancaElectronicaBBVA;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

create view VistaCompañiaTel 
AS

	select CT.NTelefono AS 'Contacto', 
			CT.Compañia AS 'Compañia'
	From Compañia_Telefonica AS CT;

Select * FROM Compañia_Telefonica;	

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaIdentificacion
AS

	SELECT nIdentificacion AS 'id',
		   I.TipoIndentificacion AS 'Tipo', I.FechaTramitado AS 'Fecha de tramite'
	FROM Identificacion as I;

SELECT * FROM VistaIdentificacion;


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaMoneda
AS

	SELECT M.IDMoneda AS 'id', M.TipoMoneda AS 'Tipo'
	FROM Moneda as M;

SELECT * FROM VistaMoneda;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaTipoDeCuenta
AS

	SELECT TC.IDTipoM AS 'ID', TC.TipoCuenta AS 'Tipo de Cuenta'
	FROM TipoDeCuenta as TC;

SELECT * FROM VistaTipoDeCuenta;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaProveedores
AS

	SELECT P.IDProvee AS 'id',
		   P.NombreProvee AS 'Proveedor del servicio', P.IdentificadorPago AS 'Identificador de Pago'
	FROM Proveedores as P;

SELECT * FROM VistaProveedores;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaCliente
AS

	SELECT C.CodigoCliente AS 'Numero de Cliente', CONCAT(C.NombresC, ' ', C.ApellidosC) AS 'Cliente', 
			C.DireccionC AS 'Direccion', C.TelefonoC AS 'Numero Telefonico', CT.Compañia AS 'Compañia Telefonica', 
            C.CorreoElecC AS 'Correo Electronico', C.Nacinalidad AS 'Nacionalidad', 
            C.IdentificacionC AS 'Numero de identificacion', I.TipoIndentificacion AS 'Tipo de identificacion'
	FROM Cliente AS C
	INNER JOIN Compañia_Telefonica AS CT ON C.TelefonoC = CT.NTelefono
	INNER JOIN Identificacion AS I ON C.IdentificacionC = I.nIdentificacion;

SELECT * FROM VistaCliente;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaUsuario
AS

	SELECT U.NumUsuario AS 'Numero de Usuario', U.NombreUsuario AS 'Nombre del Usuario', 
			U.Contraseña AS 'Esta es tu contraseña', 
			U.Estado AS 'Estado de la cuenta', U.FechaCreacion AS 'Fecha de creación de la cuenta', 
            U.CodigoC AS 'Codigo del Cliente', 
            CONCAT(Cli.NombresC, ' ', Cli.ApellidosC) AS 'El cliente se llama'
	FROM Usuario AS U
	INNER JOIN Cliente AS Cli ON U.CodigoC = Cli.CodigoCliente; 

SELECT * FROM VistaUsuario;
 
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaPago
AS

	SELECT P.IDPagos AS 'Codigo de pago', P.FechaPago AS 'Fecha de Pago', 
			P.CantidadAPagar AS 'Cantidad a pagar', P.TipodePago AS 'Tipo de pago', 
            P.UsuarioID AS 'Codigo de usuario', US.NombreUsuario AS 'Nombre del usuario',
            P.IDProvee AS 'Codigo del provedoor de servicio', Pr. NombreProvee AS 'Nombre del Proveedor'
	FROM Pago AS P
	INNER JOIN Usuario AS US ON P.UsuarioID = US.NumUsuario
	INNER JOIN Proveedores AS Pr ON P.IDProvee = Pr.IDProvee;

SELECT * FROM VistaPago;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaPagoMayorA1000
AS

	SELECT PM.IDPagos AS 'Codigo de pago', PM.FechaPago AS 'Fecha de Pago', 
			PM.CantidadAPagar AS 'Cantidad a pagar', PM.TipodePago AS 'Tipo de pago', 
            PM.UsuarioID AS 'Codigo de usuario', US.NombreUsuario AS 'Nombre del usuario',
            PM.IDProvee AS 'Codigo del provedoor de servicio', 
            Pr. NombreProvee AS 'Nombre del Proveedor'
	FROM Pago AS PM
	INNER JOIN Usuario AS US ON PM.UsuarioID = US.NumUsuario
	INNER JOIN Proveedores AS Pr ON PM.IDProvee = Pr.IDProvee

	WHERE PM.CantidadAPagar >1000;

SELECT * FROM VistaPagoMayorA1000;


/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

CREATE VIEW VistaCuenta
AS

	SELECT CU.NumCuenta AS 'Numero de cuenta', CU.IDTipo AS 'ID tipo de cuenta', 
			TDC.TipoCuenta AS 'Tipo de cuenta', CU.IDMoneda AS 'ID de moneda', 
            MO.TipoMoneda AS 'Tipo de moneda', CU.Saldo AS 'Saldo',
            CU.IDUsuario AS 'Numero de usuario', USU.NombreUsuario AS 'Usuario'
	FROM Cuenta AS CU
	INNER JOIN TipoDeCuenta AS TDC ON CU.IDTipo = TDC.IDTipoM
    INNER JOIN Moneda AS MO ON CU.IDMoneda = MO.IDMoneda
	INNER JOIN Usuario AS USU ON CU.IDUsuario = USU.NumUsuario;

SELECT * FROM VistaCuenta;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/