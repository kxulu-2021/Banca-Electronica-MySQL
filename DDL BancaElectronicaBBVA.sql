/*DDL*/
/*Isai Subuyuj*/
CREATE DATABASE BancaElectronicaBBVA;

USE BancaElectronicaBBVA;

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Compañia_Telefonica*/
create table Compañia_Telefonica(
	NTelefono bigint not null,
	Compañia varchar(20) not null,
	Primary key(NTelefono)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Identificacion*/
create table Identificacion(
	nIdentificacion bigint not null,
    TipoIndentificacion varchar(30) not null,
    FechaTramitado date not null, 
    primary key(nIdentificacion)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Moneda*/
create table Moneda(
	IDMoneda int auto_increment not null,
    TipoMoneda varchar(15) not null,
    primary key(IDMoneda)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*TipoDeCuenta*/
create table TipoDeCuenta(
	IDTipoM int auto_increment not null, 
    TipoCuenta varchar(20) not null,
    primary key(IDTipoM)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*ProveedoresDeServicio*/
create table Proveedores(
	IDProvee int auto_increment not null,
    NombreProvee Varchar(40) not null,
    IdentificadorPago bigint not null,
    primary key(IDProvee)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Cliente*/
create table Cliente(
	CodigoCliente INT not null, 
    NombresC varchar(45) not null, 
    ApellidosC varchar(45) not null,
    DireccionC varchar(60) not null, 
    TelefonoC bigint not null, 
    CorreoElecC varchar(30) not null,
    Nacinalidad varchar(15) not null,
    IdentificacionC bigint not null,
    primary key(CodigoCliente),
    foreign key(TelefonoC) references Compañia_Telefonica(NTelefono),
    foreign key(IdentificacionC) references Identificacion(nIdentificacion)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Usuario*/
create table Usuario(
	NumUsuario int auto_increment not null,
    NombreUsuario varchar(15) not null, 
    Contraseña int not null, 
    Estado varchar(25) not null,
    FechaCreacion date not null,
    CodigoC INT not null,
    primary key(NumUsuario),
    foreign key(CodigoC) references Cliente(CodigoCliente)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Pago*/
create table Pago(
	IDPagos	int auto_increment not null,
    FechaPago date not null,
    CantidadAPagar bigint not null,
    TipodePago varchar(35) not null,
    UsuarioID int not null,
    IDProvee int not null,
    primary key(IDPagos),
    foreign key(UsuarioID) references Usuario(NumUsuario),
    foreign key(IDProvee) references Proveedores(IDProvee)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

/*Cuenta*/
create table Cuenta(
	NumCuenta int auto_increment not null,
    IDTipo int not null,
    IDMoneda int not null,
    Saldo bigint not null,
    IDUsuario int not null,
    primary key(NumCuenta),
    foreign key( IDTipo) references TipoDeCuenta(IDTipoM),
    foreign key(IDMoneda) references Moneda(IDMoneda),
    foreign key(IDUsuario) references Usuario(NumUsuario)
);

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
