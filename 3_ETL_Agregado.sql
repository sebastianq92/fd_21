CREATE OR REPLACE PROCEDURE rentas_promedio_por_auto()
LANGUAJE sql

-- borramos la tabla 'ultimo' porque esta solo guarda el promedio en la ultima fecha de corte
AS $$
TRUNCATE rentas_por_auto_agencia_ultimo;

--escribimos el agrupado de la tabla de 
INSERT INTO rentas_por_auto_agencia_ultimo(variable_1,variable_2,variable_3)
  (select auto_id, agencia_renta, agencia_devolucion, count(*) as cantidad_rentas,
    avg(fecha_devolucion - fecha_renta) as tiempo_promedio_renta, 
    current_date as fecha 
    --guardamos la fecha en que se calcula el promedio
  from rentas_fin rf
  group by 
    auto_id, agencia_renta, agencia_devolucion, current_date
  order by 
    cantidad_rentas, tiempo_promedio_renta, auto_id desc. 
    --al ordenar de forma descendiente quedan hasta arriba la combinacion de auto-lugar renta- lugar devolucion mas comun,
    --luego la combinacion con mayor timepo promedio de renta y por ultimo el auto con mayor id (que sería el auto más reciente en la tabla de autos)
  )
$$;
  
  
  

