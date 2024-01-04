-- TABLA TEMPORAL EN MEMORIA

DECLARE @mitabla TABLE (ID int IDENTITY(1,1),Pais varchar(50))

INSERT INTO @mitabla VALUES ('ARGENTINA')
INSERT INTO @mitabla VALUES ('PERU')
INSERT INTO @mitabla VALUES ('MEXICO')

SELECT * from @mitabla

--------------------------------------------

-- Tabla temporal FISICA

CREATE TABLE #mitabla (ID int IDENTITY(1,1),Nombre varchar(50),Apellido varchar(50))

INSERT INTO #mitabla VALUES ('Pedro','Gomez')
INSERT INTO #mitabla VALUES ('Juan','Perez')
INSERT INTO #mitabla VALUES ('Pablo','Montoya')

SELECT * FROM #mitabla

DROP TABLE #mitabla
