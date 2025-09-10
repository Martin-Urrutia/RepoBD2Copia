-- 4) a) 

--'Error: La unidad no existe.'
exec sp_RegistrarReparacion '999', 2, 3, 54320;
--'Error: El empleado no existe.'
exec sp_RegistrarReparacion '010', 10, 33, 685;
--'Error: Ya existe una reparación registrada hoy para esta unidad y empleado.'
exec sp_RegistrarReparacion '010' , 10 , 3, 685;

-- Dropeo
drop procedure sp_RegistrarReparacion;

-- 4) b) 

--Prueba de ejecucion

SELECT dbo.fn_CalcularTiempoReparacion('010', 10) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('005', 5) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('001', 1) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('019', 19) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('009', 9) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('002', 2) AS DiasReparacion;
SELECT dbo.fn_CalcularTiempoReparacion('021', 21) AS DiasReparacion;

-- Dropeo
drop procedure fn_CalcularTiempoReparacion;


--5) a) 

UPDATE Repara 
SET StsRepara = 'Cancelado'
WHERE IdRepara = 3 ; 

Select * From HistoricoReparacion ; 

--5 b)
--CASOS DE PRUEBA
--caso a) PRUEBA DE ELIMINAR UN PRODUCTO CON ESTADO "INICIADO" Y "CANCELADO"
--caso b) SI TIENE "EN TESTING" O "TERMINADO" EL TRIGGER SE DETIENE Y NO ELIMINA

---caso a)
DELETE FROM Repara
WHERE IdRepara = 21;

--caso B)
DELETE FROM Repara
WHERE IdRepara =  4;

--buscamos el eliminado en la tabla
Select * from HistoricoEliminacionReparaciones


--6) Operacion para buscar dentro del view
SELECT * FROM vw_ReparacionesActivas; 

