-- Dropeo base de datos 
USE master;
GO
ALTER DATABASE DeviceService SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE DeviceService;
GO

CREATE DATABASE DeviceService
GO
USE DeviceService
GO
CREATE TABLE Empleado(IdEmp int identity not null,
                      NomEmp varchar(30) not null,
					  FchNacEmp date not null,
					  SueldoEmp money,
					  TipoEmp char(1) not null,
					  constraint pk_Empleado primary key(IdEmp),
					  constraint ck_TipoEmp check(TipoEmp in ('T','C')))
GO
CREATE TABLE Producto(IdProd int identity not null,
                      DscProd varchar(30) not null,
					  StkProd int,
					  CostoProd money,
					  constraint pk_Producto primary key(IdProd))
GO
CREATE TABLE Unidad(NumSerie character(10) not null,
                    IdProd int not null,
					FchFab date,
					FchVto date,
					constraint pk_Unidad primary key(NumSerie,IdProd),
					constraint fk_ProdUnidad foreign key(IdProd) references Producto(IdProd))
GO
CREATE TABLE Repara(IdRepara int identity not null,
                    NumSerie character(10) not null,
					IdProd int not null,
					IdEmp int not null,
					FchRepara datetime not null,
					CostoRepara money,
					StsRepara varchar(20) default 'Iniciado',
					IdEmpQA int,
					constraint pk_Repara primary key(IdRepara),
					constraint uk_Repara unique(NumSerie,IdProd,IdEmp,FchRepara),
					constraint ck_StsRepara check(StsRepara in ('Iniciado','En testing','Terminado','Cancelado')),
					constraint fk_UnidadRepara foreign key(NumSerie,IdProd) references Unidad(NumSerie,IdProd),
					constraint fk_EmpRepara foreign key(IdEmp) references Empleado(IdEmp),
					constraint fk_EmpQA foreign key(IdEmpQA) references Empleado(IdEmp))

GO
GO
CREATE TABLE HistoricoReparacion (
IdHist INT IDENTITY PRIMARY KEY,
IdRepara INT NOT NULL,
NumSerie CHAR(10) NOT NULL,
IdProd INT NOT NULL,
EstadoAnterior VARCHAR(20) NOT NULL,
EstadoNuevo VARCHAR(20) NOT NULL,
FchCambio DATETIME DEFAULT GETDATE());
GO
GO
CREATE TABLE HistoricoEliminacionReparaciones (
IdHist INT IDENTITY PRIMARY KEY,
IdRepara INT NOT NULL,
NumSerie CHAR(10) NOT NULL,
IdProd INT NOT NULL,
StsRepara VARCHAR(20) NOT NULL,
FchEliminacion DATETIME DEFAULT GETDATE()
);
GO

--Indices que vimos oportunos y adecuados a los nuevos cambios

CREATE INDEX idx_Producto_IdProd ON Producto(IdProd);

CREATE INDEX idx_unidad_numserie ON Unidad(NumSerie);

--Este índice mejora el rendimiento cuando consultás por unidad específica y su producto, como en funciones y procedimientos
--Lo vimos oportuno ya que nos dimos cuenta que se repite mucho el uso del WHERE ya que aparece en muchas consultas en relacion con el NumSerie y el IdProd
CREATE INDEX idx_repara_numserie_idprod ON Repara(NumSerie, IdProd);

--Para filtros por fechas, en este caso reparaciones, mejora las busquedas temporales
CREATE INDEX idx_repara_fchrepara ON Repara(FchRepara);

--Creamos este índice ya que hemos hecho muchas operaciones con lógicas y triggers por lo que al usar este indice mejora la consulta.
CREATE INDEX idx_repara_stsrepara ON Repara(StsRepara);

--Para este caso, nos fue comveniente crear el indice para poder ir llevando el seguimiento del estado de las reparaciones por si fue "Terminado" o "En testing"
CREATE INDEX idx_historep_idrepara ON HistoricoReparacion(IdRepara);













