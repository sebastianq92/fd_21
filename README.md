## diagrama_modelo_base.jpg

#### Diagrama del modelo de datos base para el negocio de renta de autos.

## 1_DDL_modelo.sql

#### DDL para las tablas mostradas en el diagrama.

## 2_DDL_Tablas_Agregadas.sql

#### DDL para las tablas en las que escribe el ETL.

## 3_ETL_Agregado.sql

#### Stored procedures para agregar la tabla de rentas. 

Instrucciones ETL: 
  Lanzar en cada fecha de corte el procedure "promedio_renta()". Este guarda el agregado de la tabla de rentas en la tabla "rentas_por_auto_agencia".
  
  Después guarda este mismo agregado en otra tabla que también tiene agregados en fechas de corte anteriores, "rentas_por_auto_agencia_hist". En esta segunda tabla podemos ver la evolución del tiempo promedio de renta de un auto a través del tiempo, o la velocidad en la que acumuló las rentas que tiene.


