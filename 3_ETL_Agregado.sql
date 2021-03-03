-- PRIMER PROCEDURE: para el calculo de los agregados en la última fecha de corte


CREATE OR REPLACE PROCEDURE promedio_renta()
LANGUAJE sql
AS $$

-- borramos la tabla que solo guarda el promedio en la ultima fecha de corte
TRUNCATE rentas_por_auto_agencia;

--escribimos el agrupado de la tabla de rentas usando la vista rentas_fin (esta tiene todas las rentas que ya finalizaron)
INSERT INTO rentas_por_auto_agencia(auto_id, agencia_renta, agencia_devolucion, cantidad_rentas, tiempo_promedio_renta, fecha)
  (select auto_id, 
      agencia_renta, 
      agencia_devolucion,   
      count(*) as cantidad_rentas, --contamos cuantas veces ha sido rentado un auto
      avg(fecha_devolucion - fecha_renta) as tiempo_promedio_renta, --calculamos el tiempo promedio de renta. la diferencia de dos fechas queda como un float en días.
      current_date as fecha   --guardamos la fecha en que se calcula el promedio
  from rentas_fin rf
  group by 
    auto_id, agencia_renta, agencia_devolucion, current_date
  order by 
    cantidad_rentas, tiempo_promedio_renta, auto_id desc. 
    --al ordenar de forma descendiente quedan hasta arriba la combinacion de auto-lugar renta- lugar devolucion mas comun,
    --luego la combinacion con mayor tiempo promedio de renta y por ultimo el auto con mayor id. Este es el auto mas recientemente adquirido.
  )
$$;



-- SEGUNDO PROCEDURE: escribe el resultado del procedure anterior en una tabla histórica.
-- En la tabla histórica podemos observar la evolucion del tiempo promedio de renta para un auto en las distintas fechas de corte.

CREATE OR REPLACE PROCEDURE procedure_name_2()
LANGUAJE sql
AS $$

INSERT INTO rentas_por_auto_agencia_hist(auto_id, agencia_renta, agencia_devolucion, cantidad_rentas, tiempo_promedio_renta, fecha)
  (select * from rentas_por_auto_agencia)
$$;



  
  
  

