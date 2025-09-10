
USE DeviceService; 
GO

Select * from Producto;

Select * from Repara;

Select * from Empleado;

Select * from Unidad;


-- A) Para todos los productos existentes, mostrar código y descripción, cantidad de 
--reparaciones con control de calidad realizado, cantidad sin control realizado y 
--cantidad de reparaciones cuyo valor fue superior a $100.
SELECT 
    p.IdProd AS CodigoProducto,
    p.DscProd AS DescripcionProducto,
    SUM(CASE WHEN r.IdEmpQA IS NOT NULL THEN 1 ELSE 0 END) AS ReparacionesConControlCalidad,
    SUM(CASE WHEN r.IdEmpQA IS NULL THEN 1 ELSE 0 END) AS ReparacionesSinControlCalidad,
    SUM(CASE WHEN r.CostoRepara > 100 THEN r.CostoRepara ELSE NULL END) AS ReparacionesCostoMayorA100
FROM 
    Producto p
LEFT JOIN 
    Unidad u ON p.IdProd = u.IdProd
LEFT JOIN 
    Repara r ON u.NumSerie = r.NumSerie AND u.IdProd = r.IdProd
GROUP BY 
    p.IdProd, p.DscProd;


-- B) Muestra los datos del Empleado con mayor cantidad de reparaciones realizadas. 
SELECT e.*
FROM Empleado e
JOIN (
    SELECT TOP 1 IdEmp, COUNT(*) AS TotalReparaciones
    FROM Repara
    GROUP BY IdEmp
    ORDER BY TotalReparaciones DESC) AS MaxRepara ON e.IdEmp = MaxRepara.IdEmp;


-- C) Muestra datos del producto y costo total de reparaciones por producto, 
--mostrando solo los productos con un costo total superior a $200.

Select p.IdProd AS CodigoProducto,
p.DscProd AS DescripcionProducto,
SUM(r.CostoRepara) AS CostoTotalReparaciones
FROM Producto p LEFT JOIN Unidad u ON p.IdProd = u.IdProd
LEFT JOIN Repara r ON u.NumSerie = r.NumSerie AND u.IdProd = r.IdProd
GROUP BY 
p.IdProd, p.DscProd
HAVING SUM (r.CostoRepara) > 200;

-- D) Datos del producto más reparado.
SELECT TOP 1
  p.IdProd AS CodigoProducto , 
  p.DscProd AS DescripcionProducto , 
  COUNT(r.NumSerie) AS TotalReparaciones
FROM Producto p
LEFT JOIN Unidad u ON p.IdProd = u.IdProd
LEFT JOIN Repara r ON u.NumSerie = r.NumSerie and u.IdProd = r.IdProd
Group by p.IdProd, p.DscProd
ORDER BY TotalReparaciones DESC;


-- E)
--. Escribe una consulta que muestre información detallada de los empleados,
--incluyendo:
--Clasificación del salario en tres niveles (Alto, Medio, Bajo)
--Categoría del empleado según su tipo (Tiempo Completo o Contratado) y nivel
--salarial (Senior, Junior, Experimentado).
--Cantidad de reparaciones realizadas por cada empleado.
--Ordenar la consulta por salario en orden descendente y, en caso de empate, por
--el número de reparaciones en orden descendente.
--Elige los rangos de clasificación de acuerdo con tu criterio (justifica).

-- En cuanto la clasificacion salarial selecionamos que los sueldos mayores a 80.000 pertenece a un nivel alto , los sueldos enrte 20.000 y 50.000 a un nivel medio ,
--por debajo de los 20.000 como bajo
-- En nivel salarial el que tenga un sueldo mayor o igual a 80.000 es un Senior , el sueldo que se encuentre entre 20.000 y 50.00 es un Junior y por debajo de 20.000 es Experimentado
-- Definimos que los Tecnicos "T" son los que trabjan a tiempo completo y los Controllers "C" son los que son contratados 
--(por ser controllers no tienen ninguna reparación ya que se enccargan del quality asurance)
SELECT 
e.SueldoEmp AS SalarioEmpleado, 
CASE 
WHEN e.SueldoEmp >= 80000 THEN 'Alto' WHEN e.SueldoEmp BETWEEN 20000 AND 50000 
THEN 'Medio' ELSE 'Bajo' END AS ClasificaciónSalarial,
CASE 
WHEN e.SueldoEmp >= 80000 THEN 'SENIOR' WHEN e.SueldoEmp BETWEEN 20000 AND 50000 THEN 'JUNIOR' 
ELSE 'EXPERIMENTADO' END AS NivelSalarial,
CASE 
WHEN e.TipoEmp = 'T' THEN 'Tiempo Completo' 
ELSE 'Contratado' END AS CategoriaEmpleado, COUNT(r.IdRepara) AS CantidadReparaciones
FROM 
    Empleado e
LEFT JOIN 
    Repara r ON e.IdEmp = r.IdEmp
GROUP BY 
    e.SueldoEmp, e.TipoEmp, e.IdEmp, e.NomEmp
ORDER BY 
    e.SueldoEmp DESC, 
    COUNT(r.IdRepara) DESC;


-- F) Muestra el costo total de reparaciones por empleado y un resumen general. 
-- Definimos como resumen de reparaciones que de un costo global de reparaciones , un total de cuantos empleados están reparando y el total de reparaciones hechas
SELECT 
e.IdEmp AS IdEmpleado, e.NomEmp AS NombreEmpleado,
SUM(r.CostoRepara) AS CostoTotalReparaciones,
(SELECT SUM(CostoRepara) FROM Repara) AS CostoGlobalReparaciones,
(SELECT COUNT(DISTINCT IdEmp) FROM Repara) AS TotalEmpleadosReparando,
(SELECT COUNT(IdRepara) FROM Repara) AS TotalDeReparaciones
FROM 
Empleado e
LEFT JOIN 
Repara r ON e.IdEmp = r.IdEmp
GROUP BY 
e.IdEmp, e.NomEmp
ORDER BY 
CostoTotalReparaciones DESC;


-- G)Muestra los datos de los Empleados Técnicos que repararon todos los 
--productos.
-- Definimos que para esta consulta se muestre el empleado que reparó alguna vez todos los productos que existen
SELECT DISTINCT 
e.IdEmp, e.NomEmp, e.TipoEmp
FROM 
Empleado e
INNER JOIN
Repara r ON e.IdEmp = r.IdEmp
WHERE 
e.TipoEmp = 'T'
GROUP BY 
e.IdEmp, e.NomEmp, e.TipoEmp
HAVING COUNT(DISTINCT r.IdProd) = (SELECT COUNT(DISTINCT IdProd) FROM Producto);


--Parte 4) 

--a)Crea un procedimiento almacenado llamado sp_RegistrarReparacion, que
--permita registrar una nueva reparación en la tabla Repara, cumpliendo con las
--siguientes reglas:

-- Usamos RTRIM ya que como el @NumSerie lleva un CHAR(10) y nosotros tenemos en el DML NumSerie con tres numeros , al ejecutar la consulta los espacios
--en blanco se llenan hata llegar al 10 , con el RTRIM se resuelve y 'corta' esos espacios sobrantes

CREATE PROCEDURE sp_RegistrarReparacion
    @NumSerie CHAR(10),
    @IdProd INT,
    @IdEmp INT,
    @CostoRepara MONEY
AS
BEGIN
	DECLARE @ErrorMsg VARCHAR(100)='';
    IF NOT EXISTS (SELECT 1 FROM Unidad WHERE RTRIM(NumSerie) = RTRIM(@NumSerie) AND IdProd = @IdProd)
    BEGIN
        SET @ErrorMsg = @ErrorMsg + 'Error: La unidad no existe. ' ;  
    END

    IF NOT EXISTS (SELECT 1 FROM Empleado WHERE IdEmp = @IdEmp)
    BEGIN
		
        SET @ErrorMsg = @ErrorMsg + 'Error: El empleado no existe. ';    
    END

    IF EXISTS (SELECT 1 FROM Repara WHERE RTRIM(NumSerie) = RTRIM(@NumSerie) AND IdProd = @IdProd AND IdEmp = @IdEmp
               AND CAST(FchRepara AS DATE) = CAST(GETDATE() AS DATE))
    BEGIN
        SET @ErrorMsg = @ErrorMsg + 'Error: Ya existe una reparación registrada hoy para esta unidad y empleado. ';
    END
	IF @ErrorMsg<> ''
	BEGIN 
		PRINT @ErrorMsg;
		RETURN ;
	END 
	

    INSERT INTO Repara (NumSerie, IdProd, IdEmp, CostoRepara, FchRepara)
    VALUES (@NumSerie, @IdProd, @IdEmp, @CostoRepara, GETDATE())

    PRINT 'Reparación registrada exitosamente.'
END

-- 4) b) 

CREATE FUNCTION fn_CalcularTiempoReparacion(
@NumSerie CHAR(10),
@IdProd INT
)
RETURNS INT
AS
BEGIN
DECLARE @DiasUnicos INT;

SELECT @DiasUnicos = COUNT(DISTINCT CONVERT(DATE, FchRepara))
FROM Repara
WHERE RTRIM (NumSerie) = RTRIM (@NumSerie) AND IdProd = @IdProd;

IF @DiasUnicos = 0
RETURN NULL;

RETURN @DiasUnicos;
END;

-- 5) a)
CREATE TRIGGER trg_ControlEstadoReparacion
ON Repara
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO HistoricoReparacion (
        IdRepara, NumSerie, IdProd,
        EstadoAnterior, EstadoNuevo, FchCambio
    )
    SELECT
        d.IdRepara,
        d.NumSerie,
        d.IdProd,
        d.StsRepara AS EstadoAnterior,
        i.StsRepara AS EstadoNuevo,
        GETDATE()
    FROM
        inserted i
    INNER JOIN
        deleted d ON i.IdRepara = d.IdRepara
    WHERE
        i.StsRepara IN ('Terminado', 'Cancelado') AND
        i.StsRepara <> d.StsRepara;
END;

--5) b) Crea un disparador llamado trg_PrevenirEliminacionReparaciones, que impida
--la eliminación de registros en la tabla Repara si la reparación tiene el estado
--"Terminado" o "En testing".

CREATE TRIGGER trg_PrevenirEliminacionReparaciones
ON Repara
INSTEAD OF DELETE
AS
BEGIN
 
  IF NOT EXISTS (SELECT 1 FROM deleted)
    RETURN;

  
  IF EXISTS (SELECT 1 FROM deleted WHERE StsRepara IN ('Terminado', 'En testing'))
  BEGIN
    PRINT 'No se puede eliminar reparaciones si el estado es Terminado o En testing.';
    RETURN;
  END;

 
  INSERT INTO HistoricoEliminacionReparaciones (IdRepara, NumSerie, IdProd, StsRepara)
  SELECT IdRepara, NumSerie, IdProd, StsRepara FROM deleted;

  
  DELETE FROM Repara WHERE IdRepara IN (SELECT IdRepara FROM deleted);

  PRINT 'Eliminado exitosamente';
END;



--6) Crea una vista llamada vw_ReparacionesActivas, que muestre información detallada
--de las reparaciones en curso, es decir, aquellas cuyo estado sea "Iniciado" o "En
--testing".

CREATE VIEW vw_ReparacionesActivas AS
SELECT r.IdRepara, r.NumSerie, r.IdProd, p.DscProd, e.NomEmp, r.FchRepara, r.StsRepara
FROM Repara r
INNER JOIN Producto p ON r.IdProd = p.IdProd
INNER JOIN Empleado e ON r.IdEmp = e.IdEmp
WHERE r.StsRepara IN ('Iniciado', 'En testing');
GO


