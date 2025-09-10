USE DeviceService; 
GO

-- Para DeviceRepair en cuanto a su rubro interpretamos que sería adecuado como empresa de electronicos la reparación y venta de los mismos , 
--esto incluye todo tipo de productos electronicos.

-- Los precios y sueldos insertados para todo el proyecto están contemplados en la moneda nacional uruguaya.
-- "C" lo definimos como controllers y "T" como técnicos
--INSERT PARA TABLA EMPLEADO
SET IDENTITY_INSERT Empleado ON;
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (1, 'Agustín', '1992-05-20', 25000, 'C')
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (2, 'Lucas', '1990-03-10', 28000, 'C')
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (3, 'María', '1985-08-15', 95000, 'T')
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (4, 'Matías', '2001-12-15', 45000, 'T')
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (5, 'Cecilia', '1999-10-05', 38000, 'T')
insert into Empleado (IdEmp, NomEmp, FchNacEmp, SueldoEmp, TipoEmp) values (6, 'Juan', '2002-07-19', 15000, 'T')
SET IDENTITY_INSERT Empleado OFF;

SET IDENTITY_INSERT Producto ON;
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (1, 'Alargue Yuko', 100, 120)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (2, 'Televisor', 35, 12850) 
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (3, 'Taladro', 80, 4500) 
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (4, 'Control remoto multiuso', 50, 450) 
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (5, 'Soldadora Advance', 100, 2500)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (6, 'Aspiradora', 10, 5000)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (7, 'Ventilador de pie', 25, 1200)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (8, 'Jarra eléctrica', 100, 650)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (9, 'Teclado', 30, 1500)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (10, 'Licuadora', 50, 3200)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (11, 'Computadora', 5, 25000)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (12, 'Aire Acondicionado', 50, 15000)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (13, 'Walkie-Talkie', 45, 1250)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (14, 'Consola ps4', 16, 11880)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (15, 'Tarjeta de sonido', 30, 850)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (16, 'Heladera', 20, 23600)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (17, 'Cámara Digital', 52, 4800)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (18, 'Microondas', 90, 4279)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (19, 'Tostadora', 100, 740)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (20, 'Tarjeta Graáfica NVDIA', 100, 2000)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (21, 'Chip RaspBerry', 10, 85)
insert into Producto (IdProd, DscProd, StkProd, CostoProd) values (22, 'Secador de pelo', 5, 45)
SET IDENTITY_INSERT Producto OFF;


--INSERT PARA TABLA UNIDAD
-- Vemos coherente que un producto electrónico no tenga fecha de vencimiento por eso están steadas a NULL

insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('001', 1, '2023-08-09', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('002', 2, '2025-01-01', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('003', 3, '2024-05-15',NULL )
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('004', 4, '2024-04-12', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('005', 5, '2024-06-20', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('006', 6, '2023-09-30', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('007', 7, '2020-04-30', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('008', 8, '2021-08-05', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('009', 9, '2019-03-07', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('010', 10, '2018-06-08', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('011', 11, '2020-05-01', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('012', 12, '2022-05-02', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('013', 13, '2024-09-19', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('014', 14, '2018-10-17', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('015', 15, '2016-11-15', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('016', 16, '2015-12-23', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('017', 17, '2023-09-26', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('018', 18, '2024-08-22', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('019', 19, '2024-08-10', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('020', 20, '2023-06-11', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('021', 21, '2023-07-15', NULL)
insert into Unidad (NumSerie, IdProd, FchFab, FchVto) values ('022', 22, '2024-06-15', NULL)



-- Las reparaciones cuyo estado sean "Cancelado" se seteara como NULL el costo de la reparación y el quality asurance 
-- Las reparaciones "En testing" pueden tener ya un costo de reparación debido a que ya se hizo el informe de la falla y la reparación que se tenga que hacer o no , 
--en caso de que no se haga la reparación es un costo por la evaluación.Las reparaciones en iniciado llevaran un NULL en su precio ya que todavía no se determina su finalización o testing
--se les asigna un controller quality asurance igualmente
SET IDENTITY_INSERT Repara ON;
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (1, '001', 1, 3, '2025-02-14', NULL,'Cancelado', NULL)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (2, '002', 2, 4, '2025-03-25', 60, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (3, '003', 3, 3, '2025-03-20', 500 , 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (4, '004', 4, 3, '2025-03-20', 80, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (5, '005', 5, 3, '2025-04-22', 850, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (6, '006', 6, 3, '2025-06-10', 2000, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (7, '007', 7, 4, '2025-05-02', 200, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (8, '008', 8, 5, '2025-02-05', 120, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (9, '009', 9, 5, '2025-09-09', 350, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (10, '010', 10, 6, '2025-10-15', 800, 'En testing', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (11, '011', 11, 5, '2025-10-11', 4500, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (12, '012', 12, 4, '2025-11-10', NULL, 'Cancelado', NULL)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (13, '013', 13, 3, '2025-12-31', 100, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (14, '014', 14, 4, '2025-07-28', 1500, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (15, '015', 15, 6, '2025-06-24', NULL, 'Cancelado', NULL)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (16, '016', 16, 5, '2025-08-30', 16780, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (17, '017', 17, 3, '2025-11-17', NULL, 'Cancelado', NULL)
-- Inserts para Repara repetidos 
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (18, '018', 18, 5, '2025-12-17', 1250, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (19, '019', 19, 6, '2025-08-11', 500, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (20, '020', 20, 3, '2025-06-12', 6500, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (21, '001', 1, 2, '2025-09-07', NULL, 'Cancelado', NULL)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (22, '005', 5, 3, '2025-06-06', 850, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (23, '005', 5, 3, '2025-12-27', 645, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (24, '001', 1, 3, '2025-10-21', 50, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (25, '001', 1, 6, '2025-03-25', 50, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (26, '001', 1, 4, '2025-05-15', 85, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (27, '012', 12, 4, '2025-07-01', 5000, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (28, '012', 12, 3, '2025-08-06', 3500, 'En testing', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (29, '018', 18, 6, '2025-09-11', 950, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (30, '010', 10, 3, '2025-11-17', 685, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (31, '005', 5, 3, '2025-10-23', null, 'Cancelado', null)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (32, '009', 9, 6, '2025-07-05', 400, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (33, '004', 4, 6, '2025-10-08', 100, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (34, '010', 10, 4, '2025-04-13', 450, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (35, '010', 10, 3, '2025-02-03', 600, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (36, '006', 6, 5, '2025-08-15', 2000, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (37, '007', 7, 3, '2025-09-16', 300, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (38, '002', 2, 3, '2025-07-10', 1500, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (39, '002', 2, 4, '2025-06-01', 2800, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (40, '002', 2, 3, '2025-06-01', 5000, 'Terminado', 1)

-- Insert de repara para que la consulta G de resultado 
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (41, '001', 1, 6, '2025-07-24', 120,'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (42, '002', 2, 6, '2025-03-15', 60, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (43, '003', 3, 6, '2025-03-19', 500 , 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (44, '004', 4, 6, '2025-03-30', 80, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (45, '005', 5, 6, '2025-09-08', 850, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (46, '006', 6, 6, '2025-06-02', 2000, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (47, '007', 7, 6, '2025-10-13', 200, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (48, '008', 8, 6, '2025-12-12', 120, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (49, '009', 9, 6, '2025-09-23', 350, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (50, '010', 10, 6, '2025-11-16', 800, 'En testing', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (51, '011', 11, 6, '2025-10-21', 4500, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (52, '012', 12, 6, '2025-11-01', 4000, 'En testing', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (53, '013', 13, 6, '2025-12-30', 100, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (54, '014', 14, 6, '2025-01-28', 1500, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (55, '015', 15, 6, '2025-10-20', 1000, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (56, '016', 16, 6, '2025-08-24', 16780, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (57, '017', 17, 6, '2025-11-19', 2420, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (58, '018', 18, 6, '2025-12-27', 1250, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (59, '019', 19, 6, '2025-08-29', 500, 'Terminado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (60, '020', 20, 6, '2025-02-13', 6500, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (61, '021', 21, 6, '2025-09-03', 200, 'En testing', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (62, '022', 22, 6, '2025-04-08', 390, 'En testing', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (63, '002', 2, 3, '2025-08-07', 4000, 'Terminado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (64, '021', 21, 4, '2025-07-13', NULL, 'Iniciado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (65, '022', 22, 5, '2025-01-18', NULL, 'Iniciado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (66, '002', 2, 3, '2025-09-07', NULL, 'Iniciado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (67, '003', 3, 3, '2025-12-09', NULL, 'Iniciado', 2)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (68, '004', 4, 5, '2025-11-19', NULL, 'Iniciado', 1)
insert into Repara (IdRepara, NumSerie,IdProd, IdEmp, FchRepara, CostoRepara, StsRepara, IdEmpQA) values (69, '006', 6, 6, '2025-11-23', NULL, 'Iniciado', 2)
SET IDENTITY_INSERT Repara OFF;



